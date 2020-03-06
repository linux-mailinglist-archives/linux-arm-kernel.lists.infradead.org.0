Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9FB17C185
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 16:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ehn3ll9joFz7FVB9w35YfUl1V6ZOrzP1mRNwh+/3sgo=; b=qcqxjePMaAGSyr
	8zcg7rADgH9HoFQHIFD22VJRYzRombPNt4z9A/eFh/KIMe4jbJaYsCdqr4QUr896KkeKvkFddbZwO
	hum5q10SZiD1FpQG9/Gwb1FQwDLNZblCWLdECUQjPaO/Glo58Yr+HV0UpNQ2LTuT0iepmJMpqeVUH
	CrshBoolOvTkyEBOoZGTkB3Bmm0XH0IEz4EmLpccARgw+iFLOl3sXlYRRomzoNlmwLtSjXU8G1PDw
	/KXSn4crELdMbH6FXVc7q0J67AZj/WM7K8W2BZRfi0yoioEvbv+dhk8ZSpW/Usb6jTQJSiNJYx08E
	Ue1XGjZLSNlfz06dqdEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAEj6-0000OH-F1; Fri, 06 Mar 2020 15:17:24 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAEiw-0000NJ-Hw
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 15:17:17 +0000
Received: from mail-qk1-f172.google.com ([209.85.222.172]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MS4ab-1ileU70cih-00TR2P for <linux-arm-kernel@lists.infradead.org>; Fri,
 06 Mar 2020 16:17:12 +0100
Received: by mail-qk1-f172.google.com with SMTP id j7so2598715qkd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 07:17:09 -0800 (PST)
X-Gm-Message-State: ANhLgQ22s2HfpZ/nBmYQzyuDExrx1+xO86qyfCkU3YVY4x6Ynih66rTv
 gybrpf9IcnVhyJcAEIAUoqoQ+mSEguZWAEXQcRI=
X-Google-Smtp-Source: ADFU+vuDaJsUN+5WX4+LLP5sq0sAGqnYo6p0nd7YbrvGU0xXwmka3Olj+EhE6qSwp8BgobIoBAs6cm1HFLnsNlxHW68=
X-Received: by 2002:a37:b984:: with SMTP id j126mr3197034qkf.3.1583507828957; 
 Fri, 06 Mar 2020 07:17:08 -0800 (PST)
MIME-Version: 1.0
References: <2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com>
 <c1489f55-369d-2cff-ff36-b10fb5d3ee79@kernel.org>
 <8207cd51-5b94-2f15-de9f-d85c9c385bca@huawei.com>
 <6115fa56-a471-1e9f-edbb-e643fa4e7e11@kernel.org>
 <7c955142-1fcb-d99e-69e4-1e0d3d9eb8c3@huawei.com>
 <CAK8P3a0f9hnKGd6GJ8qFZSu+J-n4fY23TCGxQkmgJaxbpre50Q@mail.gmail.com>
 <90af535f-00ef-c1e3-ec20-aae2bd2a0d88@kernel.org>
 <CAK8P3a2Grd0JsBNsB19oAxrAFtOdpvjrpGcfeArKe7zD_jrUZw@mail.gmail.com>
 <ae0a1bf1-948f-7df0-9efb-cd1e94e27d2d@huawei.com>
In-Reply-To: <ae0a1bf1-948f-7df0-9efb-cd1e94e27d2d@huawei.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 6 Mar 2020 16:16:52 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2wdCrBP=a8ZypWoC=HyCU3oYYNeCddWM7oT+xM9gTPhw@mail.gmail.com>
Message-ID: <CAK8P3a2wdCrBP=a8ZypWoC=HyCU3oYYNeCddWM7oT+xM9gTPhw@mail.gmail.com>
Subject: Re: About commit "io: change inX() to have their own IO barrier
 overrides"
To: John Garry <john.garry@huawei.com>
X-Provags-ID: V03:K1:sO5lZ6HS+3b2dljta70DcOeHxvNX1PbgmP/UTZzsO0c0KOMvNUy
 OSztKY/sOPhudQDJJoNzQ7RSlSCBGa2MmsSCXNINjMmNtPTjELzAvIBgr2OF9hDs/BZmKVF
 HTfyhiPVknwIAOylj2huPWTRLsVrA1zIOknI/1wEz57MeZGlqQkoDLx83jWbxTGN3YyvraV
 1+4O/90Qdv2M3F12QkU9A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/efaLolHcVw=:Sp2qBrnteenMDAhkacZw6G
 Bd3MRX0O20s0EXuUswTThbxTq0eiHqhPPag4mEZTViIMqGAGIpZIhI6CUVmegS1jDabF9MDwi
 JMguiIttk/xKlN8FZRPJUUHB01li3sU7xcTvJa3ZOpMHZV7hd4Y7XVOtsP3dOrTpzNDMwehHv
 Ca1LylUkR84LCdC8L++/x/tK94L1Uqa2oKM9vMb6T+BDfq0SjZwZ1Cyow4ZPjv27CMP1o26J+
 7NXRu0LnH3ddDHcCML4UBW5GzTywn8200ZOqUTKaFgkwB+rUxCzZIxi3ogz+PyvtpChYqc1Dh
 NfpQt8LVG90dEGGzynCVmWzOsHpWB7ljb5Cpvor84BZ3WSU8JPIbK/Gbaz95ElyQMI/Ywsdt4
 BTwDtIMS+47E43rQDMw9VpS5xuAmGQfCczwWr/+LhYh3e+xXNJxUlZKjp2tkQqnnWY1ZOBOX3
 iZf91D0kv65680Dd+iJi5IkBg4/yGg3XaQfkIF7x1QfecLH9zTHgbnrr3expsNyG4sWz9eJo8
 1xjWwxx+cAgKkwTcIjv3VYIQ10MQjkA8ftKHncZ5GKlmRDbd8maodUNB0YSpnk7S/tTTktgCU
 X/49uraUp0joHJGTaGLdkIqQnHqU/IMDUzuO2Ek8yWRsttPmk7mqHSP+2CsHvGBPA5yAwrRNz
 UctKs8Zlv22Ag1mYU2TLBB5ReR7oHuZF9ZB9KZzPDo3x/Z3fpLvqMpa76zNHQvsKnHMoIkxRl
 EbxSzYvWyJX2aQxd2MoLvCbvEakFRK1FQ4DowFnpulSw454PCkPQn4mHcAN1YCPXdswdZWBUA
 THGiCuZ1XYAEA6CMuEhPZasLIFR5yekthgB6HqNZEs7LXMGh3o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_071716_600316_ED16B0D4 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>, Sinan Kaya <okaya@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, "xuwei \(O\)" <xuwei5@hisilicon.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 11:40 AM John Garry <john.garry@huawei.com> wrote:
> On 06/03/2020 07:54, Arnd Bergmann wrote:
> > On Fri, Mar 6, 2020 at 4:44 AM Sinan Kaya <okaya@kernel.org> wrote:
> -- a/lib/logic_pio.c
> +++ b/lib/logic_pio.c
> @@ -229,13 +229,21 @@ unsigned long
> logic_pio_trans_cpuaddr(resource_size_t addr)
>   }
>
>   #if defined(CONFIG_INDIRECT_PIO) && defined(PCI_IOBASE)
> +
> +#define logic_in_to_cpu_b(x) (x)
> +#define logic_in_to_cpu_w(x) __le16_to_cpu(x)
> +#define logic_in_to_cpu_l(x) __le32_to_cpu(x)
> +
>   #define BUILD_LOGIC_IO(bw, type)                                      \
>   type logic_in##bw(unsigned long addr)                                 \
>   {                                                                     \
>          type ret = (type)~0;                                           \
>                                                                         \
>          if (addr < MMIO_UPPER_LIMIT) {                                 \
> -               ret = read##bw(PCI_IOBASE + addr);                     \
> +               void __iomem *_addr = PCI_IOBASE + addr;               \
> +               __io_pbr();                                            \
> +               ret = logic_in_to_cpu_##bw(__raw_read##bw(_addr));     \
> +               __io_par(ret);                                         \
>          } else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {\
>                  struct logic_pio_hwaddr *entry = find_io_rang
>
> We could prob combine the le_to_cpu and __raw_read into a single macro.

What is the purpose of splitting out the byteswap rather than leaving the
open-coded rather than __le16_to_cpu(__raw_readw(PCI_IOBASE + addr))?

If this is needed to work across architectures, how about adding
an intermediate __raw_inw() etc in asm-generic/io.h like

#ifndef __raw_inw
#define __raw_inw(a) __raw_readw(PCI_IOBASE + addr));
#endif

#include <linux/logic_pio.h>

#ifndef inw
static inline u16 inw(unsigned long addr)
{
        u16 val;

        __io_pbr();
        val = __le16_to_cpu(__raw_inw(addr));
        __io_par(val);
        return val;
}
#endif

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
