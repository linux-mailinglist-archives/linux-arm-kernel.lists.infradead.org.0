Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1798E9E63
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=It9/q46/xKfLACWDVVI3XCD7bbeqVBLBh7FYPMbq39k=; b=OtXYtZCtVaPlza
	wc9oRAda+ECD6zmCh0lPtdYBY2aq7CXDPKP+ogo2tp5F6NaArlkLAf3DKtcUHsXoMdYjJ8act3A0H
	eqCSFBE3ouMc+nwWEcL3Wb60Tm8PlHLoDqY3Tg9+xR4ohwPjB73tPO9JahVyMSdBLDQCjvQAqXLBM
	V7e2SoXIVSXZM/woyhwO0bLpz8zlmK5DjT9K4MSMONgDq07OC5Hb7YAjEJfX44kZjq9EBbGtSMns4
	AHpdIIaK1xnAAxnajykWpYzOhWhkdH/zoGaFeP5AQ0LEqh1+uP1KmH0jedv6aJvcHKUUum7p59Kpu
	o6FvSmdRaJ+Fi64iT8Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpZr-0004Y6-Sm; Wed, 30 Oct 2019 15:08:03 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpZe-0004Wq-6Y
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:07:51 +0000
Received: by mail-wm1-x342.google.com with SMTP id 11so2510646wmk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 08:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IVhb82hZKy3JKoMCSWoDHfXIpFlhHoV+nkQ7avEsjo8=;
 b=ukToVhLSujgmB9Tsiif4JAXcvd0xOODNlntL+1C3r/lc/f58KQACTRUGKbG5qP2hAw
 U74Ix2ccXLUAiQWVrbAwUPMFq+yEXzkjX3nQIYGl6metluaAOkyl/5hiXQL/H4zKuJDB
 WAK5Tbh2E2k0bvw6+aqmI9jZsOPu0Zk5/LfRcfrdUiSiHzP5FtUzqWAUddDJQovDB5Af
 jhIDrBoTrTYtoKg3WrsnRBAZEAlanmnC0/BI7G0643ST2BUk7yyQzjCRVZjDUGq0MDQT
 mm7VogHOeHMAOW74rp7Gw+/SyULbZD673Cah1FKY4JUzC3K8h6yfL4mt/m6L7tsHPq9+
 +iLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IVhb82hZKy3JKoMCSWoDHfXIpFlhHoV+nkQ7avEsjo8=;
 b=kgrmR1SxTZuyKk6zxoCWyRtUzpO6u8YldnnAaQ6nyngPGYenPDfV1Z6T/4uTChNGaF
 XG2FIOaFjb6ChXFhA43iko1OvSjuVb5oBpaJ8ouyx3XA7dIH47qGBDiVbwywJzeOGfJR
 DJlGA+y1xk42XZFSXYwV2VByj4HAl+SolDxWijnHk06FisldvBYKY39sUNM3Jza+nIQd
 BYXw81gYJEnB5gnn47pEp2HGhpOiWwAiVhJ4im2nH/0eVJC4nzmy2HnuVC6gjyauTcUf
 nzeSPztZgLUO3XcI07F1u9fqlhyJi3cZDIKML9Rkof0iuPv7jwV+HOCnF7OtWUSrt5Kw
 WEkQ==
X-Gm-Message-State: APjAAAXh5M7c0xMUyJlhgg2kJoQ6kbrq6xXb+K2V8DTuC4aqwuC+9yCL
 EYJlgq2qx+EYSMKzomHQvWttUj/G21o=
X-Google-Smtp-Source: APXvYqxbS22vg9ni+tcUXA1fmRlwnTOErKtdg+KUUsw6WFM4XaT+NAQHuQDlB3SGcH30V/QKToPdFA==
X-Received: by 2002:a05:600c:254:: with SMTP id
 20mr8704020wmj.123.1572448067972; 
 Wed, 30 Oct 2019 08:07:47 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id 11sm278074wmg.36.2019.10.30.08.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 08:07:47 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH v7 0/2] Allwinner H6 Mali GPU support
Date: Wed, 30 Oct 2019 16:07:40 +0100
Message-Id: <20191030150742.3573-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_080750_267372_FF2EF29B 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpQcm9wZXIgaW9tbXUgcGF0Y2hlcyBoYXMgYmVlbiBtZXJnZWRbMF0uCgpUaGVyZSBpcyBz
dGlsbCB3b3JrIHRvIGRvIHRvIG1ha2UgaXQgd29ya3Mgd2l0aCBwYW5mcm9zdApidXQgYWxsIG1v
ZHVsZXMgY2FuIGJlIHByb2JlZCBhbmQgcmVtb3ZlZCBzbW9vdGhseS4KClRoZXNlIGJpbmRpbmdz
IGNvdWxkIGJlIHVzZWQgYWxzbyBmb3Igb3V0LW9mLXRyZWUgbW9kdWxlcy4KClswXTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvY292ZXIuMTU2OTg1MTUxNy5naXQucm9iaW4u
bXVycGh5QGFybS5jb20vCgpDaGFuZ2Ugc2luY2UgdjY6CiAtIFJlbW92ZSBpb21tdSBwYXRjaGVz
CiAtIFJlYmFzZSBvbiA1LjQtcmM0CgpDbMOpbWVudCBQw6lyb24gKDIpOgogIGFybTY0OiBkdHM6
IGFsbHdpbm5lcjogQWRkIEFSTSBNYWxpIEdQVSBub2RlIGZvciBINgogIGFybTY0OiBkdHM6IGFs
bHdpbm5lcjogQWRkIG1hbGkgR1BVIHN1cHBseSBmb3IgSDYgYm9hcmRzCgogLi4uL2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzICAgfCAgNiArKysrKysKIC4uLi9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLTMuZHRzICAgIHwgIDYgKysrKysr
CiAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgICB8ICA2
ICsrKysrKwogLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzICAg
ICAgfCAgNiArKysrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5k
dHNpICAgICAgIHwgMTQgKysrKysrKysrKysrKysKIDUgZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0
aW9ucygrKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
