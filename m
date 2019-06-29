Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7C75AAD5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/8dtVqA13HaOs/veaAOV6MJ1cz3kM69mLhDUfNWECgE=; b=UCMNhBv3ddRQkLozYrDqa+9Wni
	9JDk4B4VhiehLt1KIoJeMTVDeR6iW0qAR363GaUS1kkh6TI8nSkC11CQeBW3/tFUbRa+6lmoEIOkQ
	se1PlWdd+uZUvI1xmhlEErLXTd7Z63nYqnc+329wczhXuVpT1whStiZuLpO7IPSIN6gw3Hipa+M1+
	T01L6T9zQFDdcs8s0GPggnwp7sqKanQAkTVLgx4rfP3g/w4YKA3I5Wjaw7wAr1liIG37WYo6fQTuA
	gd+SG05yPzfC2RkacYo0I34Zl+W3H2GPQaRNKlv6DEXkPooLqhgDzFY/d2oMwUmw9a3KtBkUepmR3
	KeZMcfQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCLG-00053q-Pr; Sat, 29 Jun 2019 12:20:30 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCKd-0003cC-Qb
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 12:19:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810790;
 bh=fL2+AI98j8bIYBwN2CiIF9PN7Bc2vnixmlYqMuIDlao=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=C6YvUAdTCt+r59fYR52cNUvf/3qM1fU04l9L2yjRFQYxDyLy9bY1REVzCW+0Gw0bp
 dBwj7Wn1Z4/G1DTyY3mBjz5EZ6nLizdBZ3MIVR3a0ZwZUO05BRi38DaUXLrvIroHau
 noOLOwsG2OWRj7vKF0AnKMj3Jn4//lmEGlrAE2iQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0Mb8HX-1i06pq1FwB-00KiTJ; Sat, 29 Jun 2019 14:14:05 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 02/29] staging: bcm2835-camera: Replace spinlock protecting
 context_map with mutex
Date: Sat, 29 Jun 2019 14:13:17 +0200
Message-Id: <1561810410-8829-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:BqPhO65rcNnqQtgYuhpJKHix52bqJyO4dyUafgpRYICvlwQuxw5
 oKUAAST17Z2Xq28lb8OIDSpRKKloIbfqiNcGkN7v5wGB6Ztb7kyzBoUy/PK9gTbfCEOYYhE
 xj6mzji8vPjxJJP11KspOlmTI22GjctRUcjmW2209H9h05c7n2dDlhVY+ldisMTZLtnQMRO
 g75rZ4Yf0bD4rX0QQtq2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:D38coRggz9A=:a7o2X3TUrBGDGSYLpr1lJh
 bbTIkVRPYo9xlCzcyQxtYYxWtk4NIwDM/Idfp++VaE2cgBv0GYOYZHvfG5V7pni/BtagAtkpp
 Gdr0o0eF3NhJ6c82tmsurWX/DJYuN0nSenbkPHNMpn2jpKTlAwULI3Dn1Fv90mfjAKEJEZlKT
 4P7ksKebLt/FNWWkOf+tAlAjydtEyAGz6McB1B4qaYe++6TA1A6bqGOuqjnbtHsTmuM37Zgbr
 GIwKYrlXft/VhNWsPQzLDLK7OrLfNqZfKkEVo7xtv33c+NmS38hc74Z6AzWnrUlwgH8XQRxoN
 Z5Q1/qS9az1tORlReawZGJKFXtiKQOaCT1xX5IxP8SBGd7OKBb0YvuXF2bccYkXAxnE542FJc
 sAenIq1usFrjMJYNeMW9twzxZV7ENOfgEoS5Yid8Ak2ksSZo0AlJBtSpGz0JiwGYMp9MrfGFD
 EF2nWusbKb+79Gz7QojBjkfcSUKgEQyJ3QKxcYl4xyo7ZxEE7ikw4YkZ2elW2gCTAxqeUhMtH
 efFXalcHc76fqbsK6aKJBRi5gOqfiPGyQayiNMm/g7v9dUfFqmc2ZCb8b/Z9gfUB4HSTnFwS1
 TeP/iifaNC/q+Id4jfBmVF19Ae+uROjBpQgHTqfDro7xolLgu/j9h3yzyHcvf0hgeSADj2hIn
 2AKTeXB4Nq3zhfwbUkw0xkeEdNbMBQvH5lagclNr+v4VI738sNkUVaTjrATWZKBfFxQs5LvQV
 +u5OlpIKl0HNheeBtws05QzeIDD+K+tz0XZIvinYmfgRLrYJm6Pf4a6uCfzpOJjCp5HhaJSoY
 QdzEvQLQfnl+0+nvm6I+HZUjytgsdf8l2wwmgfvAoZRDz+o2pdRj+FZzbyqOW+ewMr8m/Me0r
 7NOxnXH6MTvS9I2AKFLjdmkFrCaPXQdSqPq1tHEboXINcsXuV50yHZ8hHGU9EDzWvofXZ4quB
 miw/PcF7au7ErGsr9mZHx8G091C0/te/epvweBsT7+i0nBexkubJelNBOCNwq2n9IBTJ5QXfa
 aUSqUyttbwj0xjpkHX2C/u1tsO+AM7+FUCu+a/plvuFU4o4csX8UBXbhTpOiaak0CgRAmHgE0
 xlLx+QHlaavUmE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051952_160343_D8BAF225 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
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
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
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
