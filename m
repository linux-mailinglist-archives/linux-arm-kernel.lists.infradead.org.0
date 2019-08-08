Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875A085D36
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BpR97BmibAktcFal02Kd10/q5uscMv1sPcDVKOQUMUo=; b=rbz
	YLX6OHXF9xuDsnQjK+jyl7vhs/wsuciAHXQ33sxQFnOb0VJHbcHaNolkHuAstJgVHsBl92gADB0KY
	eA7cU2VvjiWXMQgtt+0lFd6IVTucgUogQq6DUTI7BM0Q87A5xUynDEBvyIonRaFSOYOhh2h/X6S+B
	talIvihU9/IcaH3qJ82mKW25DGHXQWuSGSwJm1+o0DEeKhKEIQzLbgb9QU6DkeLikrdC5DXkUo0Dr
	QM3yglSO6tsyhzafNjrvzflbRAnz1S4VI9sJ0uX1yzipgsAXze12DMHmUfAMcFVc2pfw9SOnp6qjN
	qdXW0j2ntDOJJDMA/JqplzWQqcMW8Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hve4Z-00076n-Gd; Thu, 08 Aug 2019 08:46:59 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hve4L-000763-5M
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:46:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1565254001;
 s=strato-dkim-0002; d=hashmail.org;
 h=Message-ID:Subject:Cc:To:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=2zgjnksGmQ/ZAqwgmVBQpCI5NujcSeTtpImhQoYcKR0=;
 b=YpnxougucLY79fPObRYzPxzHpW6wVWfyLNBQGj6xF5mF2RqDCjc7VaBU11Wz5lb87e
 5usNp2RKXjvNH7dxuKkZZtklLlbfRoo0VvRMHft+eZiDy1QajqSUBVb9n2Yi26kUxuee
 q7ZPxyFy0FZjJc+zGy8s3n3niBlh/RmtM6EepGvqMKyPp2ytX0oVrjVJ5+RdM5kKByrm
 kgNjOf9veL4/ZEFybucQ6Xz35hdBfW25Qdn3WpDFI/kpa80niTJUHHm7LtAcCxsYcYym
 SZ+qIjcBzxZ8FmuNR3zBlq467G6RTFNNnzWwAN8PftAWL6u4Xw/b7cEISLYWWdsrpgNX
 Zj4w==
X-RZG-AUTH: ":O2kGeEG7b/pS1F+/SC3i33Z09cEcHcRBAtqtGgRBDGeSaUqOsX4glAsBpQEeWZN4DOM7"
X-RZG-CLASS-ID: mo00
Received: from localhost by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id f0aa24v788kcir9
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Thu, 8 Aug 2019 10:46:38 +0200 (CEST)
Date: Thu, 8 Aug 2019 10:46:36 +0200
From: yvahkhfo.1df7f8c2@hashmail.org
To: linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: usb zero copy dma handling
Message-ID: <20190808084636.GB15080@priv-mua.localdomain>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_014645_807814_4841E050 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:12 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: security@kernel.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello linux-usb and linux-arm.

Ccing security@ because "the kernel dma code is mapping randomish
kernel/user mem to a user process" seems to have security implications
even though i didnt research that aspect past "its a 100% reliable way
to crash a raspi from userspace". 

tried submitting this through linux-arm-kernel ~2 weeks ago but
the only "response" i got was phishing-spam.
tried to follow up through raspi-internals chat, they suggested
i try linux-usb instead, but otoh the original reporter was
deflected from -usb to "try some other mls, they might care".
https://www.spinics.net/lists/linux-usb/msg173277.html

if i am not following some arcane ritual or indenting convention required 
by regular users of these lists i apologize in advance, but i am not a 
kernel developer, i am just here as a user with a bug and a patch. 
(and the vger FAQ link 404s...) 

i rediffed against HEAD even though the two weeks old patch still applied
cleanly with +2 offset.

# stepping off soap box # actual technical content starts here #

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




--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="arm-usb-dma-v2.diff"

diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
index b265ab5405f9..69594c2169ea 100644
--- a/drivers/usb/core/devio.c
+++ b/drivers/usb/core/devio.c
@@ -238,9 +238,14 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
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

--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--ZPt4rx8FFjLCG7dd--

