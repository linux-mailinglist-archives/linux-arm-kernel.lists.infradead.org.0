Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAD1A4BD1
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dcUr4OLA4w44g9fdTlhn7yVW1kOteHV0lK29Q7tgWmQ=; b=j7r/2SEcNe504X
	QaGYQESZfRMLvzZ15Heuzp1ezb7t8jKvl6NAMiaaAjYF/m2hAWdt7LLN4qhVrmOGUz7dco/Yukguy
	AJfxRZUbJof0j9QOV7HOeGOpVlBuc5N8/LjMWZ/ffz04hk+RgwI9s6VTw8y4F+OHjjUICP3a+P5Vg
	kPCimiEGDuz/iwGpyy+0PjKzEeOFiHyLVGkrGBdfHanzzujlZjqDgXgCcqPBgs6A3fVHAxEVtR5rM
	lEhZ+sgmlJ/5MzI+33cCv71gnwpn1WmNCTo6/TN0lpUQ79KrLJZvTMFbvPtlGQwHFtHrNG7+t+//z
	Ph8NXfpKVS2h3H8jcBrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4WZl-0002Tz-UI; Sun, 01 Sep 2019 20:35:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WZZ-0002Ta-9i
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 20:35:42 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 70E7D4ACA5;
 Sun,  1 Sep 2019 20:35:39 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-36.ams2.redhat.com
 [10.36.116.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 954FD608C1;
 Sun,  1 Sep 2019 20:35:34 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Gilad Ben-Yossef <gilad@benyossef.com>, Atul Gupta <atul.gupta@chelsio.com>
Subject: [PATCH 0/9] crypto: sha256 - Merge crypto/sha256.h into crypto/sha.h
Date: Sun,  1 Sep 2019 22:35:23 +0200
Message-Id: <20190901203532.2615-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Sun, 01 Sep 2019 20:35:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_133541_358988_CA9DDA5D 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390@vger.kernel.org, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Eric Biggers <ebiggers@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, linux-crypto@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

As promised here is a follow-up series to my earlier sha256 series.

Note I have only compiled and tested this series on x86_64 !! 

All changes to architecture specific code on other archs have not even
been tested to compile! With that said most of these changes were done
using my editors search - replace function so things should be fine...
(and FWIW I did do a Kconfig hack to compile test the ccree change).

The first patch in this series rename various file local functions /
arrays to avoid conflicts with the new include/crypto/sha256.h, followed
by a patch merging include/crypto/sha256.h into include/crypto/sha.h.

The last patch makes use of this merging to remove a bit more code
duplication, making sha256_generic use sha256_init and sha224_init from
lib/crypto/sha256.c. An added advantage of this, is that this gives these
2 functions coverage by the crypto selftests.

Regards,

Hans


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
