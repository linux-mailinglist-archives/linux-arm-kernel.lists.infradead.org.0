Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D0F17BAA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:43:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PCaNpA3L6Xx7SCA0ikvF0vpztMlL/Wvi85ulgEfxi/w=; b=JCmd7CAFpD5HyR+rgG1ZbNnoA
	ofcaNpx98fR7FGbBJeFZQDVWhvXbw2+a/ZONtSUIvwEnwx8zmIP3OB1KzmAld6FYB5wzW4NPDlq3v
	7VwFagK1YGpB4yl47lAH/74RKJ8Mpaf5WT52kMarLOXagZ/9DIKo3rFhT2bF57WfLzb56nTmQmvml
	HNp64CXH3MTZn3JWWrU7HzWfLniimUF01r5C6oyrQZVTBpPSba+srLqKlUdSXhTyMQ7yqD7LEWOR7
	EZmYxZdfjaBPzHTBc2uh4blEqVaLURPmFTSMMi4FQ4M5ZPr5Vta4WidK6tUM8uTQbCDAhYKC6c74t
	Xluv+uqwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAARQ-0004FS-9W; Fri, 06 Mar 2020 10:42:52 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAOo-0000JT-3j
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:40:12 +0000
Received: from lhreml703-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id CD22D7FCF6C196E470F8;
 Fri,  6 Mar 2020 10:40:00 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml703-cah.china.huawei.com (10.201.108.44) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 6 Mar 2020 10:40:00 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 6 Mar 2020
 10:40:00 +0000
Subject: Re: About commit "io: change inX() to have their own IO barrier
 overrides"
To: Arnd Bergmann <arnd@arndb.de>, Sinan Kaya <okaya@kernel.org>
References: <2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com>
 <c1489f55-369d-2cff-ff36-b10fb5d3ee79@kernel.org>
 <8207cd51-5b94-2f15-de9f-d85c9c385bca@huawei.com>
 <6115fa56-a471-1e9f-edbb-e643fa4e7e11@kernel.org>
 <7c955142-1fcb-d99e-69e4-1e0d3d9eb8c3@huawei.com>
 <CAK8P3a0f9hnKGd6GJ8qFZSu+J-n4fY23TCGxQkmgJaxbpre50Q@mail.gmail.com>
 <90af535f-00ef-c1e3-ec20-aae2bd2a0d88@kernel.org>
 <CAK8P3a2Grd0JsBNsB19oAxrAFtOdpvjrpGcfeArKe7zD_jrUZw@mail.gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <ae0a1bf1-948f-7df0-9efb-cd1e94e27d2d@huawei.com>
Date: Fri, 6 Mar 2020 10:39:59 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2Grd0JsBNsB19oAxrAFtOdpvjrpGcfeArKe7zD_jrUZw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml716-chm.china.huawei.com (10.201.108.67) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_024010_306077_05BEF0E7 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, "xuwei \(O\)" <xuwei5@hisilicon.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/03/2020 07:54, Arnd Bergmann wrote:
> On Fri, Mar 6, 2020 at 4:44 AM Sinan Kaya <okaya@kernel.org> wrote:
>>
>> On 3/3/2020 11:40 AM, Arnd Bergmann wrote:
>>>> -          ret = read##bw(PCI_IOBASE + addr);
>>>> +          __io_pbr();
>>>> +          ret = __raw_read##bw(PCI_IOBASE + addr);
>>>> +          __io_pbr();
>>> __io_par();
>>>
>>
>> Why do we need to change read##bw above?
>>
>> read##bw already provides strong ordering guarantees across multiple
>> architectures.
> 
> The exact semantics of inl() and readl() are slightly different, so they
> have distinct sets of barriers in the asm-generic/io.h implementation.
> 
> For instance, the arm64 architectures defines in_par() as '__iormb(v)',
> but defines __io_ar() as a  '__rmb()'. Similarly, riscv defines them
> as "fence i,ior" and "fence i,r".
> 
> You could argue that the definitions are wrong (I have not checked the
> history of the definitions), but as long as the inb() in asm-generic/io.h
> uses those, the implementation in lib/logic_pio.c uses the same ones
> to make the two behave the same way.
> 

So the change would look like:

-- a/lib/logic_pio.c
+++ b/lib/logic_pio.c
@@ -229,13 +229,21 @@ unsigned long 
logic_pio_trans_cpuaddr(resource_size_t addr)
  }

  #if defined(CONFIG_INDIRECT_PIO) && defined(PCI_IOBASE)
+
+#define logic_in_to_cpu_b(x) (x)
+#define logic_in_to_cpu_w(x) __le16_to_cpu(x)
+#define logic_in_to_cpu_l(x) __le32_to_cpu(x)
+
  #define BUILD_LOGIC_IO(bw, type)                                      \
  type logic_in##bw(unsigned long addr)                                 \
  {                                                                     \
         type ret = (type)~0;                                           \
                                                                        \
         if (addr < MMIO_UPPER_LIMIT) {                                 \
-               ret = read##bw(PCI_IOBASE + addr);                     \
+               void __iomem *_addr = PCI_IOBASE + addr;               \
+               __io_pbr();                                            \
+               ret = logic_in_to_cpu_##bw(__raw_read##bw(_addr));     \
+               __io_par(ret);                                         \
         } else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {\
                 struct logic_pio_hwaddr *entry = find_io_rang

We could prob combine the le_to_cpu and __raw_read into a single macro.

John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
