Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECA277912
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 15:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xFURP9SqSG8B9fG55weF6rixRhciPKvE/fEuGVIJvw0=; b=cKOS6YJygAwO2kDosJ5sNUjiLc
	kV3t2Ro0X1NZvpeD7l8zd5t++hAy8vyVklWQSsYN0+mNS7QIUmKbbXpowa6cxjPINSnORTWeXPKPK
	nzPMVd97ipmpcAHDEfFDIu7w1jvUnfdV7PcBBnzKvHI2NOUvNjRDiTxnFyHHEZnldgdPVxSv84eSH
	sdxGfR/XkUEUef8FcO/4YAE3FAau/HD8mzuVApN0exjfu6/2uMTQcfyuB//9Wkr+/GUWgZdQy2RDH
	F6YHY/etjbFcm7YWS2POnfMRi/xLt0GBOII4hEttFdDOeLwVab20dBFR3r8LWx7iR5uKZXGH8X1S2
	bFQyNSmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNDV-0007jg-Iu; Sat, 27 Jul 2019 13:58:33 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrND8-0007j7-5J
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 13:58:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1564235882;
 s=strato-dkim-0002; d=hashmail.org;
 h=Message-ID:Subject:To:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=ZeucrT1dvMfM9OR7MkrskBOBidt/anKxYtgxx+ooKsY=;
 b=UZKDc9u7FaR6T/uuGgTr8cFvgwZrk8tVKC0Ne7gTFGI6qYYz6Xtfupcmnwm15bnP5d
 wtibj8eQqYysn7OCiy6QAG3WOKbs5V49gSi0zHzLY6a5T/XWnhKiYltURG6l4B3EPJcW
 317q37enR2jUQ6oAfED65Gvi7ylhtrVemJ2G05dM+5xBhThow65bsbN3kpPbaZ8yHyO4
 IdzA3YFyi2ta/0j1EBERA1DUUUpEUOO+MBP2hWtgAwoe6nOYhb6ZfiJqA5uvw/XllIcQ
 0YGZybEKHreSsaGWPqjmUtUm41Iw2VVLnZghqH2q6ojJTpy9GUrnOblP1RogZcdWj7ss
 lXew==
X-RZG-AUTH: ":O2kGeEG7b/pS1F+/SC3i33Z09cEcHcRBAtqtGgRBDGeSaUqOsX4glAsBpQEeWZB4JIsouA=="
X-RZG-CLASS-ID: mo00
Received: from localhost by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id f0aa24v6RDw0ri2
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate)
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Jul 2019 15:58:00 +0200 (CEST)
Date: Sat, 27 Jul 2019 15:57:59 +0200
From: yvahknez.7f7d2ff0@hashmail.org
To: linux-arm-kernel@lists.infradead.org
Subject: usb zero copy dma handling
Message-ID: <20190727135759.GA19217@priv-mua.localdomain>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_065811_209293_F51C0A35 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello linux-arm.

this is a followup to that thread from 2018-11:
https://www.spinics.net/lists/arm-kernel/msg685598.html

the issue was discussed in more detail than i can claim
to fully understand back then, but no fix ever merged.
but i would really like to use rtl_433 on a raspi without
having to build a custom-patched kernel first.

the attached patch is my stripdown/cleanup of a devel-diff
provided to me by the original reporter Steve Markgraf.
credits to him for the good parts, blame to me for the bad parts.

this does not cover the additional case of "PIO-based usb controllers"
mainly because i dont understand what that means (or how to handle it)
and if its broken right now (as the thread indicates) it might
as well stay broken until someone who understands cares enough.

could you please get this on track for merging?

regards,
  x23



--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="arm-usb-dma.diff"

diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
index ffccd40ea67d..0fedf4a97f65 100644
--- a/drivers/usb/core/devio.c
+++ b/drivers/usb/core/devio.c
@@ -240,9 +240,14 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
 	usbm->vma_use_count = 1;
 	INIT_LIST_HEAD(&usbm->memlist);
 
+#ifdef CONFIG_X86
 	if (remap_pfn_range(vma, vma->vm_start,
 			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
 			size, vma->vm_page_prot) < 0) {
+#else /* !CONFIG_X86 */
+	if (dma_mmap_coherent(ps->dev->bus->sysdev, 
+			vma, mem, dma_handle, size) < 0) {
+#endif /* !CONFIG_X86 */
 		dec_usb_memory_use_count(usbm, &usbm->vma_use_count);
 		return -EAGAIN;
 	}

--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--YZ5djTAD1cGYuMQK--

