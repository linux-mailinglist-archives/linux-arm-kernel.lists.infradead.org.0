Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D289B174AE4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 04:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qaz+Wx9mbXkIBGklCfOz8uKpRHvLMRsHjxWZ/QfViNQ=; b=ozyUt79LLDlN7f
	88yxWrTVhsA8il8zQEFmUJYMlT3fpLOkzxfjxwyHaE4BiHK4FJcZ/4s0Cq4kEqfs1Gf6Pcvb9TUog
	UyyJViv19+T5lwJdZPayrTwaIjfo6tvGINXSmGcqzPuk8bwDT/1NRcoC0HQrfpJUHI1xRlNJB/oF/
	7c3rR5GE2GFJguFt+3idSzcHW+RNWI28wvcJWh8/B67rm51pSTZyWHg0eoFH/RbWV2JJfdgyM2NFF
	m9VbX/bXtD3ipObyxLYmomfKzjm+EQJFxJ6sd2MjmV9nqKK1Djm1qbu0nrCafKseG3VdGjNOVS/ol
	A06ggPJgzsTI4IbHpoqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8FA8-00009U-CA; Sun, 01 Mar 2020 03:21:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8F9z-00008s-TO; Sun, 01 Mar 2020 03:20:57 +0000
X-UUID: 967e38062d0746219db2a340770e7c90-20200229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=gEuqpc3FvuW2EqLSsfehY0NEfaRH3CHq60ZO1Tz8Ll0=; 
 b=DBbEYTNVuWKolwpjxOOvsL41xfWXB2vWKUedwE1eblZ217SXPMXhDo3Brx5D26nyB4KWZyA4ZLXCuAFixNPCjJije47I28I1oGimaVegueC3TtzJ/hj/wCvo2qwgw821Lz2cY/qNZAi2mDLJnN+pn1p5OdnZ6r1SLc+OgJQ760c=;
X-UUID: 967e38062d0746219db2a340770e7c90-20200229
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 57743514; Sat, 29 Feb 2020 19:20:47 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Feb 2020 19:21:57 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 1 Mar 2020 11:22:18 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 1 Mar 2020 11:20:18 +0800
Message-ID: <1583032843.12083.24.camel@mtkswgap22>
Subject: Re: [PATCH v4] usb: gadget: f_fs: try to fix AIO issue under ARM 64
 bit TAGGED mode
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Sun, 1 Mar 2020 11:20:43 +0800
In-Reply-To: <20200228164848.GH4019108@arrakis.emea.arm.com>
References: <1582627315-21123-1-git-send-email-macpaul.lin@mediatek.com>
 <1582718512-28923-1-git-send-email-macpaul.lin@mediatek.com>
 <20200228164848.GH4019108@arrakis.emea.arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_192055_975139_CB16F37E 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Sasha Levin <sashal@kernel.org>, Shen Jing <jingx.shen@intel.com>, CC
 Hwang <cc.hwang@mediatek.com>, Mediatek
 WSD Upstream <wsd_upstream@mediatek.com>, Jerry Zhang <zhangjerry@google.com>,
 andreyknvl@google.com, linux-usb@vger.kernel.org,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Andrzej
 Pietrasiewicz <andrzej.p@collabora.com>, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Peter Chen <peter.chen@nxp.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Vincent
 Pelletier <plr.vincent@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 John Stultz <john.stultz@linaro.org>, eugenis@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-02-28 at 16:48 +0000, Catalin Marinas wrote:
> On Wed, Feb 26, 2020 at 08:01:52PM +0800, Macpaul Lin wrote:
> > diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
> > index ce1d023..192935f 100644
> > --- a/drivers/usb/gadget/function/f_fs.c
> > +++ b/drivers/usb/gadget/function/f_fs.c
> > @@ -715,7 +715,20 @@ static void ffs_epfile_io_complete(struct usb_ep *_ep, struct usb_request *req)
> >  
> >  static ssize_t ffs_copy_to_iter(void *data, int data_len, struct iov_iter *iter)
> >  {
> > -	ssize_t ret = copy_to_iter(data, data_len, iter);
> > +	ssize_t ret;
> > +
> > +#if defined(CONFIG_ARM64)
> > +	/*
> > +	 * Replace tagged address passed by user space application before
> > +	 * copying.
> > +	 */
> > +	if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
> > +		(iter->type == ITER_IOVEC)) {
> > +		*(unsigned long *)&iter->iov->iov_base =
> > +			(unsigned long)untagged_addr(iter->iov->iov_base);
> > +	}
> > +#endif
> > +	ret = copy_to_iter(data, data_len, iter);
> >  	if (likely(ret == data_len))
> >  		return ret;
> 
> I had forgotten that we discussed a similar case already a few months
> ago (thanks to Evgenii for pointing out). Do you have this commit
> applied to your tree: df325e05a682 ("arm64: Validate tagged addresses in
> access_ok() called from kernel threads")?
> 

Yes! We have that patch. I've also got Google's reply about referencing
this patch in android kernel tree.
https://android-review.googlesource.com/c/kernel/common/+/1186615

However, during my debugging process, I've dumped specific length (e.g.,
24 bytes for the first request) AIO request buffer address both in adbd
and in __range_ok(). Then I've found __range_ok() still always return
false on address begin with "0x3c". Since untagged_addr() already called
in __range_ok(), to set "TIF_TAGGED_ADDR" with adbd's user space buffer
should be the possible solution. Hence I've send the v3 patch.

Anyway, I've found that to disable TAGGED address in adbd is possible by
this way and will report to Google and see how they think.

diff --git a/adb/daemon/main.cpp b/adb/daemon/main.cpp
index 9e02e89ab..b2f6f8e3f 100644
--- a/adb/daemon/main.cpp
+++ b/adb/daemon/main.cpp
@@ -317,6 +317,8 @@ int main(int argc, char** argv) {
     mallopt(M_DECAY_TIME, 1);
 #endif

+    prctl(PR_SET_TAGGED_ADDR_CTRL, ~PR_TAGGED_ADDR_ENABLE, 0, 0, 0);
+
     while (true) {
         static struct option opts[] = {
                 {"root_seclabel", required_argument, nullptr, 's'},

Many thanks!
Macpaul Lin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
