Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739AAA872E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 20:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OlItf5y8yj+3iF0ura1gOdKvjF04nmwEZn6Za2wGvYs=; b=MwoHDQuNuXV220
	8XrBHY/A8cfOPO0QLRvYT/SDrMweKisC7vpuc83TTFXdcX+oXG5MNEJJgrOPgYsQLf7LtnNBw/SIF
	qqVTT2Eh30fplxAfhi8gM7qnORihslLJX5IlHWPT+DPgFYU4Ky0PZpaV8aXntRhfRvTFmjzO5hiyg
	8lrDmAQUeoOJPcT2AmlqA0LvDSxW1RnAEdqxf1EgVM3cVkqZj6ifHKBEUnxayazXWVNhOzbrE6W6U
	15NNhdfGlkNnIXTilR0P6MXYqhqno3Yj9aY8lFv/k/mn8ck2aKpd9tEdzVuXlWURAl6FY/ZZi6yKS
	LxBkHcvsp+3JLQI0nrBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZhW-000732-Od; Wed, 04 Sep 2019 18:08:15 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZhO-00071i-2P
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 18:08:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567620473;
 bh=uSFdeY18J73GEbur7/f5eGY33e2+gZfGIbg70oqM+2E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=dFPK7v0eikK//IWvKaPDuTF8vPd9O/aKmO1DDSUY2K3IC2bxnVQ5PIk2EJhGM27kR
 +lY+G9BNhgaiYDLaUrJX9F/2f1aIQsTNuq3ya5rD0AT7g8CjigqFQwromeihBXHSXC
 O/uuMoGto9MJPLXCEM44QVkN4nCV3sTM8MJWrjW4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([84.118.159.3]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MhlGk-1ij1B310yG-00dqYX; Wed, 04 Sep 2019 20:07:53 +0200
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 1/1] KVM: inject data abort if instruction cannot be decoded
Date: Wed,  4 Sep 2019 20:07:36 +0200
Message-Id: <20190904180736.29009-1-xypron.glpk@gmx.de>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Provags-ID: V03:K1:abXNHvOQi/p7CEIzoPWMQ9XFYpp4Z25ZscYRNbtDcb67ZH0vqAE
 CCaWYLtBMzVUoZZj3DLLIFWRozpR+tYvr63KEw05ujxgzzI7iN0g+dgjei45TpxWlugdsiF
 hLqcNFs7qc6B5xKFTZBxgoGdWkp6vsuL+qhmsf9GozxhZ5IUyUHXZk7+SsU37eCbQpoyn4O
 c/fcxp1MYFQRPvj2y1OVw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JozR6u9JImk=:9BlOOIijgEVJQxytK0x9tx
 ffPR1NDnISmrIyzczzP11cywtaAFP9aCT0RxToSFNkToJSnm4aAHE/S7sSOhgAIyxz/MiIr75
 KcPkdb6fnx23AA/KWNlaSRurYgMgazJ/6IuexrQBTdxaFm90ZlBzRLL3K8ywN/CV7JZtvH6z7
 aFhqnENeGY04kiL4Zvg4gvZ4OW0XCYjI/FqU9AbtXKdBObedSvwR72zNEd05U37t9+x8zKk6j
 LTJizGn7PHI8EuNOQLdKg0IXFjG8dPDYe8z7wgn2qlKGBjBeAawjfNp3Epb6kUw9213ZNGLMo
 fh1gBhdrooRdaj1tEiGAhterenwoPCIM9X+VRYi8DAQbb70yGSicPAYEljE/k+/rJofxOuT+q
 CxwkoHsuZ4mqi5+NhnaTJl4e36SNg28WzHRxDYOvL2igXBERcU6bsBTitDCccbufyP+5dPxOQ
 uPyjZfdAVfzt20K85FboUwnZkpWJ8PAiIrQaJZXInThEl1hlhcQZBHzYzyhU5Hr0vT7U4bguC
 Jk1d4iShpWENsqgl5/YyR1EpmrUUZyiBRo01uDGlt9hLy/RC6f3F7rSjihjY1zPvYJb9r26zl
 sjKm0HwdyniWypblwzX1tidPLcBPHVc7xLlAQB9Amxfrap8J5aIaJV9ncupkKh9lDp1SMA7bi
 bbFb7ydvnEj9BvWA7m7P9G3rJBACZN+IByS9r2paS2gmJORze++SF7xMJ4CapGqMPhm0Uh0+m
 NWRh4c0s58AB0LRR0FnqR0vIkZjw58tSrhrZpQ+i3HGvS9U73dI9u74NpBU/UtPNAl1M2oC33
 lU0fo9l6DRWSvRYhpvM+2DLbV2udzosMeRZaicEkLQuVPBWNFtqfE6GjW4KVEbg3EftIIKjKR
 0gT3EfIIZdht5LApSOvcoT70CR06LPLNQ0o3DEzr2ake3RZ2x6ItWyyJD2cf+MIMsBa7xKluS
 cRnSMqgtb9PkRlVbNFar+V/OJ3yKgF04Ay4K/3PiP3AygXGBXLaN2SaDOnbm+6BsN8XXZNLGJ
 wEJbpsOVJ8RM0sLV8X2HpOgJy77cP3gLkngJ3OQ0+ziAetElq+4QoVGQHvzzIc37WuWuUj672
 HV4zT7/BsxTmuoCUoNd2qwOf/vWbcWNHRuTTY+ujEDs0+SybO+LhCZ8r+WlBFZgejj7NXq+RE
 cgxieGDxbNjHstwJ68ra7rk37gfXEY/CDV3xk1cGtH89pLOT4mYhLPJ/CAin64ctNsznLUIXM
 81exZsNAov/vsxqph
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_110806_412147_8EFA33E7 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xypron.glpk[at]gmx.de)
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?q?Daniel=20P=20=2E=20Berrang=C3=A9?= <berrange@redhat.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Julien Thierry <julien.thierry@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If an application tries to access memory that is not mapped, an error
ENOSYS, "load/store instruction decoding not implemented" may occur.
QEMU will hang with a register dump.

Instead create a data abort that can be handled gracefully by the
application running in the virtual environment.

Now the virtual machine can react to the event in the most appropriate
way - by recovering, by writing an informative log, or by rebooting.

Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
---
 virt/kvm/arm/mmio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
index a8a6a0c883f1..0cbed7d6a0f4 100644
--- a/virt/kvm/arm/mmio.c
+++ b/virt/kvm/arm/mmio.c
@@ -161,8 +161,8 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		if (ret)
 			return ret;
 	} else {
-		kvm_err("load/store instruction decoding not implemented\n");
-		return -ENOSYS;
+		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
+		return 1;
 	}

 	rt = vcpu->arch.mmio_decode.rt;
--
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
