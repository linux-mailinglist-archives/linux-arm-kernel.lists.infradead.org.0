Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17BB58A80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0ge5Q7WHN5Esuxl64wc8zzLBUeqmS0TpVP2SZKUpeeY=; b=BBkmJRIRzz60i/JedPKobjcwW5
	r5jqp1ZTpvB6LDa/TITUxVEL+lBAhsyovXIjHAileMefwf/ZYmzTYr6FkIeIk5nteFansoIuqe1+G
	69vKE4vPcaWhAmuWoDn/KCmdxq9h/0dcH0m4HJeLxKhqZCIoZ304K1TGzP7hD65gvpHMUr0Nb8NTN
	yjB4hbHzZfaRTD1WhFh54QmfXXXh1ge52Fk1fXNyZCh92qXUA9A8TMrryjc9O1oIbY30UTCTVas9p
	sNAE8l5xoKQ/RgX8o5kVeFoehIN1u5VdIwJgb37qAtMU9++93Plm4eGaFG2sCJ8DLDfpCJFbUmA1l
	6OCqyXtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZd2-0004NU-BM; Thu, 27 Jun 2019 19:00:16 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZu-0002Rx-HZ; Thu, 27 Jun 2019 18:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661809;
 bh=jFtiONca1hdVFxm/usbMzIOKsZXNfYtIs0InExv49OQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=D2n/GfnRCEz2ywceZA/kKouLEZ8IkCehCjlO5aCmz5+tC8z030yAjvdqyB0woCQeN
 H09IhGDFTlzXp9AbFu9SJX3i2YwAk1/NGSQ1+j+NCrJwtEvKmh9tgOeu+CTO3Renvy
 fzrN02XCH8IWytAfITKVaxSZm8rhnIDEreVKRfko=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M92lh-1hqF922WeD-00CQcQ; Thu, 27 Jun 2019 20:56:49 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 03/31] staging: bcm2835-camera: Replace spinlock protecting
 context_map with mutex
Date: Thu, 27 Jun 2019 20:56:00 +0200
Message-Id: <1561661788-22744-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:D2AkJfxcnXtCj6sokPxOpiTqs4No+MBrwT2O1aUmi8Tnu7VKWpY
 ZFyRQTMI7ZkQVPnbVGSo2fbjdP/sTozwpiHjpLkN4cGBYUtit3jU8k6ejuGXndm024u31kq
 CEMvzZJtgy68BFC4kNFKSOKqeMU56wyUQr1OTrnVo/ptijmkU1vNNLav5iuMGT5yAsO/KKl
 mOW8FQsL6mvuvLq2Hd5Wg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YoEFoI43RE0=:uqiLpOzWe7CCbDvKSmvf4u
 hv6fV2QWvbr6aOXQD1uX8MtNNg4lU2dk3lQFsfOA7Meu1Pn79kuJnEe08ilfhnMeQpwzmkbMD
 TTdRUaCm0ntceexWCPrXahYEgeAzp7TeH2eEL9LHNHdh/Tm1fUupwq2Tzv4tZrBGX1bhRn0Kw
 V2XOP0rE07+F8dS5YLd5nREB+Z4KqIG5Wny37p62GEK0lfyN/mIBLoq7R6m5IPJ3gPG26ienD
 hJg9N9oyV4VhrKmTDEb4dCdfhQnIKCD9MWAAzA4jeSvN95bZ+aTRnTNpnRxWSkS4ZfvGUZet5
 BernveDdnDGOR3W9W/nN+aH0zZnBITGvFNV0Ctnc0m0GJ3wciwIfZfYKNoV7TRuJKtH9G0dwm
 Gf1Rsc96auPYWwGGw0qnBeY+nj5yZeSVNJoqfYutoSoYvFtIcwlfDtn6r0+KUH4NHfzYKFXDF
 +QzjdCKEADgsVpF+w2J/m7pYLj+6NTCE536Qwf2ATTHxjeN2DK8PP0P0xdrtXW6J8ob6UQpzJ
 aYVIXFUiw/KTdc94/LDrbwix9ehCsdtWfglwLjVEoZRjWe2M7/V9cXSKCAkCjRqqxABbKS//s
 cFmgH7rLOo45JZQiDU3Ph0c9ZAOdt4tk5rrc4HMK4IA1/Y5OGb272uohTkfZc8+OsuzPsCwdU
 JTZ+tJW9TKlMxcKqgoBPj2znffLz9ZkBReeFgxacfR8yEY48M6x7mLaybZZbMUyalldj56jGu
 ugn05DtisHQ3NQtsAe7ExK5Ql4d1snFZKfXg2dipIzUv+ePlv/tsDSd/f4fYHjIr1BFf+ACA5
 uUaQHjSfmPBEEXEdt9xoayihczLwsbDSFkPNtooeSWW68mcTdloMXaexBfMYY5RtzssS4KsHI
 j/hVtzOa97dzujhsSCXqJ3xV+tETDYzIkC3tmmJkMSinxsJOEb8JDuGPRrM9MwZvSRMpHCIO9
 Ne0uTNT5KJ/ilJVdNLXLCsqc1DIv1AG/ytGM6zhRVNGmvHB+0EnCoSyHIeMolWrbMaBcvn60x
 pTdHScginuRG8EVT4wxqihbRRwPjOuAW1o7qExTSK98mJCmGFSJY8gmavl+8/K44NSBb6TYpj
 BMG0VCs1qIKoKo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115702_874396_B2BFE188 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

The commit "staging: bcm2835-camera: Replace open-coded idr with a struct idr."
replaced an internal implementation of an idr with the standard functions
and a spinlock. idr_alloc(GFP_KERNEL) can sleep whilst calling kmem_cache_alloc
to allocate the new node, but this is not valid whilst in an atomic context
due to the spinlock.

There is no need for this to be a spinlock as a standard mutex is
sufficient.

Fixes: 950fd867c635 ("staging: bcm2835-camera: Replace open-coded idr with a struct idr.")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 16af735..f1bb900 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -161,7 +161,8 @@ struct vchiq_mmal_instance {
 	void *bulk_scratch;

 	struct idr context_map;
-	spinlock_t context_map_lock;
+	/* protect accesses to context_map */
+	struct mutex context_map_lock;

 	/* component to use next */
 	int component_idx;
@@ -184,10 +185,10 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 	 * that when we service the VCHI reply, we can look up what
 	 * message is being replied to.
 	 */
-	spin_lock(&instance->context_map_lock);
+	mutex_lock(&instance->context_map_lock);
 	handle = idr_alloc(&instance->context_map, msg_context,
 			   0, 0, GFP_KERNEL);
-	spin_unlock(&instance->context_map_lock);
+	mutex_unlock(&instance->context_map_lock);

 	if (handle < 0) {
 		kfree(msg_context);
@@ -211,9 +212,9 @@ release_msg_context(struct mmal_msg_context *msg_context)
 {
 	struct vchiq_mmal_instance *instance = msg_context->instance;

-	spin_lock(&instance->context_map_lock);
+	mutex_lock(&instance->context_map_lock);
 	idr_remove(&instance->context_map, msg_context->handle);
-	spin_unlock(&instance->context_map_lock);
+	mutex_unlock(&instance->context_map_lock);
 	kfree(msg_context);
 }

@@ -1849,7 +1850,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)

 	instance->bulk_scratch = vmalloc(PAGE_SIZE);

-	spin_lock_init(&instance->context_map_lock);
+	mutex_init(&instance->context_map_lock);
 	idr_init_base(&instance->context_map, 1);

 	params.callback_param = instance;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
