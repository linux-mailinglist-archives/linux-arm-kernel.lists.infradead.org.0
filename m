Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACA61AD92
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZZxJbwaOMELGvHVgMizFX63oldzhkVCmM1jWPKBxA2c=; b=lJ91lDkrBepbWm
	PSmTcjhuYufcrVBfVzOXskSOzkrOXsJ4nWb5IsiZW3fNxrx85Q/7ZZZtOQplN10SIfYLyU6UGwLGQ
	g/OOlkTbAgEMl4gC50R+Oa9mzUbln5bRboe/nAvuFhohW0FK1yIMa7uwrA9boZ4Vo/DNETQZWNi14
	IIoFnUuSW91nHZHlPeAPU3m7esAv7iunZ1d7K8AAy/nB25SEbbkiEmwf1pvH6OpEW9HROGvNWY48I
	KbKX1XLYEimC35Bav2o2FJgpR8P9Shu8kr0zTcKOgoOyh1u92C2NYKmTU7kIaBVaKbQilxLMXgval
	pwMXIaXq7kOO431E0koQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsYN-00062N-6y; Sun, 12 May 2019 17:46:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsYD-00060r-Rr
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:46:19 +0000
Received: by mail-wm1-x344.google.com with SMTP id c66so4565376wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 10:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QVZfv1XrlSfCBKYSGVa1+qErP5NlTniZ7Uw0fXhDRsM=;
 b=nBmE7w7P+u/frCbPSdZZa0Xz+mMQkcFFkWsU3I6Hta0YBTEF9DDgCHpCIVFXrcFstD
 CEvhmQNCSykn2g8xZMk77WWw626Ia3fV1rSp5z1dYf6OVEkMUXY/QD5FRaZ2qY8VVstE
 m5OJQirNJgPgxvv28WYnq8sJXVTdvAmynUI37JIyuZY8Sb/1XxRABptKzWNvbjmnJlnV
 DOwj5L1QUQOvOzZarMkEh80NzOQX8/f1msKgmIyc/ms/1s2dhTxCPcptMh/feRm+rBsI
 QpSQD6JEXJzk1T5/RbL472yHbo/VkcuOMhf15pXbJKuBPmBJ7uTDTF4QBpCLjtJbyZf9
 iXzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QVZfv1XrlSfCBKYSGVa1+qErP5NlTniZ7Uw0fXhDRsM=;
 b=fVRW5yDFsjaSBQbT1xJDUl0K4O79N8Evd0hb56W5IGbMvInR5M//QLep1Mza/t2XSY
 3F+tAeR5pyXXlenUP4mYXEuWK2BOtHOwjD+GJTyNoAxfM5ERgqUwHLstcKrmmU4A+R80
 KXbMXxnS0vWVApnpLA9zr9SMKmUz+GC7qKS38XNmMgMFt5e2YLQ5lzhiCKtvdlNQ+ZHx
 Yf0NlCDfXnS5NuKzSR7IBypCEDulycTsAB4N4loNPHKT940Tw3N6GK2z0qBsXWRortPX
 4MjYQMWgj8A68hBsnF5WWjmXD9omjQ0DDEEVhdCov3gdylcDY9yTjNb1XmcuPl4V2CRa
 wfRA==
X-Gm-Message-State: APjAAAXTYejwjV/0BQqHXNlgB5u3buEJF6E361Kvrz/wMnNYcesDyGCd
 tilj+4Yl6RhStXe1H6EGdLQ=
X-Google-Smtp-Source: APXvYqxhWeqE2lBh2k5a4dTcV7sEJ2M9qqkT8DQ/tBHx1rAhg4yUak6CGFAClz0i/26Aef9LHqGtXw==
X-Received: by 2002:a05:600c:254e:: with SMTP id
 e14mr1830396wma.70.1557683175358; 
 Sun, 12 May 2019 10:46:15 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id d14sm9090558wre.78.2019.05.12.10.46.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 10:46:14 -0700 (PDT)
From: peron.clem@gmail.com
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 0/8] Allwinner H6 Mali GPU support
Date: Sun, 12 May 2019 19:46:00 +0200
Message-Id: <20190512174608.10083-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104617_903463_84D2FFE7 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KCkhpLAoKVGhlIEFs
bHdpbm5lciBINiBoYXMgYSBNYWxpLVQ3MjAgTVAyLiBUaGUgZHJpdmVycyBhcmUKb3V0LW9mLXRy
ZWUgc28gdGhpcyBzZXJpZXMgb25seSBpbnRyb2R1Y2UgdGhlIGR0LWJpbmRpbmdzLgoKVGhlIGZp
cnN0IHBhdGNoIGlzIGZyb20gTmVpbCBBbXN0cm9uZyBhbmQgaGFzIGJlZW4gYWxyZWFkeQptZXJn
ZWQgaW4gbGludXgtYW1sb2dpYy4gSXQgaXMgcmVxdWlyZWQgZm9yIHRoaXMgc2VyaWVzLgoKVGhl
IHNlY29uZCBwYXRjaCBpcyBmcm9tIEljZW5vd3kgWmhlbmcgd2hlcmUgSSBjaGFuZ2VkIHRoZQpv
cmRlciBoYXMgcmVxdWlyZWQgYnkgUm9iIEhlcnJpbmcuClNlZTogaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wYXRjaC8xMDY5OTgyOS8KClRoYW5rcywKQ2zDqW1lbnQKCkNoYW5nZXMgaW4g
djQ6CiAtIEFkZCBSb2IgSGVycmluZyByZXZpZXdlZC1ieSB0YWcKIC0gUmVzZW50IHdpdGggY29y
cmVjdCBNYWludGFpbmVycwoKQ2hhbmdlcyBpbiB2MyAoVGhhbmtzIHRvIE1heGltZSBSaXBhcmQp
OgogLSBSZWF1dGhvciBJY2Vub3d5IGZvciBoZXIgcGF0Y2gKCkNoYW5nZXMgaW4gdjIgKFRoYW5r
cyB0byBNYXhpbWUgUmlwYXJkKToKIC0gRHJvcCBHUFUgT1BQIFRhYmxlCiAtIEFkZCBjbG9ja3Mg
YW5kIGNsb2NrLW5hbWVzIGluIHJlcXVpcmVkCgpDbMOpbWVudCBQw6lyb24gKDYpOgogIGR0LWJp
bmRpbmdzOiBncHU6IG1hbGktbWlkZ2FyZDogQWRkIEg2IG1hbGkgZ3B1IGNvbXBhdGlibGUKICBh
cm02NDogZHRzOiBhbGx3aW5uZXI6IEFkZCBBUk0gTWFsaSBHUFUgbm9kZSBmb3IgSDYKICBhcm02
NDogZHRzOiBhbGx3aW5uZXI6IEFkZCBtYWxpIEdQVSBzdXBwbHkgZm9yIFBpbmUgSDY0CiAgYXJt
NjQ6IGR0czogYWxsd2lubmVyOiBBZGQgbWFsaSBHUFUgc3VwcGx5IGZvciBCZWVsaW5rIEdTMQog
IGFybTY0OiBkdHM6IGFsbHdpbm5lcjogQWRkIG1hbGkgR1BVIHN1cHBseSBmb3IgT3JhbmdlUGkg
Qm9hcmRzCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBBZGQgbWFsaSBHUFUgc3VwcGx5IGZvciBP
cmFuZ2VQaSAzCgpJY2Vub3d5IFpoZW5nICgxKToKICBkdC1iaW5kaW5nczogZ3B1OiBhZGQgYnVz
IGNsb2NrIGZvciBNYWxpIE1pZGdhcmQgR1BVcwoKTmVpbCBBcm1zdHJvbmcgKDEpOgogIGR0LWJp
bmRpbmdzOiBncHU6IG1hbGktbWlkZ2FyZDogQWRkIHJlc2V0cyBwcm9wZXJ0eQoKIC4uLi9iaW5k
aW5ncy9ncHUvYXJtLG1hbGktbWlkZ2FyZC50eHQgICAgICAgICB8IDI3ICsrKysrKysrKysrKysr
KysrKysKIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMgICB8ICA1
ICsrKysKIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS0zLmR0cyAgICB8ICA1
ICsrKysKIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgICB8ICA1
ICsrKysKIC4uLi9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cyB8ICA1
ICsrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpICB8IDE0
ICsrKysrKysrKysKIDYgZmlsZXMgY2hhbmdlZCwgNjEgaW5zZXJ0aW9ucygrKQoKLS0gCjIuMTcu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
