Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B6C1F5A04
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QbJJokNiuGLtHNjiGfYTc3QDsZoGjjDuUkKiSBgf/UA=; b=NykLHt2yMBUbwe
	IEPxP/9diXEChelpTrTUrFPI0pugQ78B9OuDhrzc8vktiqk4pOjaMN/kShTEeXZvA9bOR5fggiybZ
	9ETwJKtnll5T+mfY9w5ugKmGFmC36T+dERYniJqfH/9HEM3kRbRc480eg/ql7PHWE2WwMZGrhF3mv
	VoYEFPsjUzIIxbzlv07jS6CbPyvJE0erype9Y3EJE/+EruZnm6v0YBUWyU8kFhMcTnoe7OcoVzXsa
	0pHfWXcH4cGJvLzr6R6RFBmQKvWTLu6hc2mo1oIvNyZywIXlNTBeFA1J58fukvbkBWXIMuaUKOswv
	7JZhan2bhhkzOTOuKpSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4Mh-00073O-7q; Wed, 10 Jun 2020 17:18:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4L6-0005hK-SU
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id l11so3190248wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i0mKAgNccMa2ZBBdbrYs78yyCyApQWezbV22kysTj+4=;
 b=S8ZQtrdKGhYX3L2Zf22Ow4awZjHpM4Kr++6M2lV76Fip7fynDjKe7uz9EaSjHTWIy/
 +mKoYFWpbONpsoPJqFlTZM7TY0EAS0UB1mKWrWvOCM9tvFaMSVxTQElAJQDflbPupB9l
 Sbs5HAqjnXVjUANb1/ZHiWMO12/TtAEiJXtnKMpeUbDxm1dhPfPO0FNTgM2EqllGRMPi
 Si5yodapyvYHVe2/bOiaiP9hhxz85l8835Bdpf4MzXF9Y5iqMOeme5FsuUktBbg0O7pA
 1vt+witBIwa8K0wq1TL9TyUCJzuuPBCSk5CjpAOYhUXE4Rf1pf523euUWa91izJSS11E
 JgKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i0mKAgNccMa2ZBBdbrYs78yyCyApQWezbV22kysTj+4=;
 b=AO2/ua+6oXh8jIka5sIMPqgDnuLRJgG6CrLdhkQd/HhM1lsc79o78sQDWRTkyeOfkI
 letpMQtSydoJtSxlTqnZw0TLyTJtkooHfJwyl/+PUM862H8LcyhoNRYDT5UBNuX50mW0
 9M6VZ1MOzTKM0KXi54deZ9gkQgv1kUX77ezBwoUBZkuav9Gy9d7xAf5fq4ns035vOvE6
 gs0tyyLChh8GjVXJpZ2ArRnoDKh6CLvfvc0i2GhTlVtOAL3Czhd2W4kQuBLwrd5B9QXA
 UhU+4sDE+NPgX3RHR1ZlKuTLG5/kmHc8GlBT0ce7x7LFchiWOo5kaCnK0OhAFvZnlhjp
 yaZQ==
X-Gm-Message-State: AOAM530up9Sf3x0whO3+++6jTkUrKUSsFT/85aQjqBk9OMtn2WjIghEV
 yCLDIXc+pV7L/6KTEieVLvY=
X-Google-Smtp-Source: ABdhPJzJ7qXk08Ze91v6soC5e7h24A+Rehyc86Q9DWOOtanBtdgbF2FKsrQugY1rykVEtwnV/dzsxQ==
X-Received: by 2002:adf:f54c:: with SMTP id j12mr4738012wrp.369.1591809394898; 
 Wed, 10 Jun 2020 10:16:34 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id f11sm589048wrm.13.2020.06.10.10.16.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:16:34 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/9] mips: bmips: dts: add BCM6328 power domain definitions
Date: Wed, 10 Jun 2020 19:16:23 +0200
Message-Id: <20200610171630.465579-3-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610171630.465579-1-noltari@gmail.com>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101636_923383_D22BFF4F 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjMyOCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQog
djM6IFNlcGFyYXRlIGR0LWJpbmRpbmdzIGRlZmluaXRpb25zIGZyb20gcG93ZXIgZG9tYWluIC5k
dHNpIHN1cHBvcnQuCgogaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyOC1wbS5oIHwgMTcg
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCiBjcmVh
dGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyOC1wbS5oCgpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyOC1wbS5oIGIvaW5jbHVkZS9k
dC1iaW5kaW5ncy9zb2MvYmNtNjMyOC1wbS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAwMC4uNTU3ZTFhNjliN2Y3Ci0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1i
aW5kaW5ncy9zb2MvYmNtNjMyOC1wbS5oCkBAIC0wLDAgKzEsMTcgQEAKKy8qIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wKyAqLworCisjaWZuZGVmIF9fRFRfQklORElOR1NfQk1JUFNf
QkNNNjMyOF9QTV9ICisjZGVmaW5lIF9fRFRfQklORElOR1NfQk1JUFNfQkNNNjMyOF9QTV9ICisK
KyNkZWZpbmUgQkNNNjMyOF9QT1dFUl9ET01BSU5fQURTTDJfTUlQUwkwCisjZGVmaW5lIEJDTTYz
MjhfUE9XRVJfRE9NQUlOX0FEU0wyX1BIWQkxCisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlO
X0FEU0wyX0FGRQkyCisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlOX1NBUgkzCisjZGVmaW5l
IEJDTTYzMjhfUE9XRVJfRE9NQUlOX1BDTQk0CisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlO
X1VTQkQJNQorI2RlZmluZSBCQ002MzI4X1BPV0VSX0RPTUFJTl9VU0JICTYKKyNkZWZpbmUgQkNN
NjMyOF9QT1dFUl9ET01BSU5fUENJRQk3CisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlOX1JP
Qk9TVwk4CisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlOX0VQSFkJOQorCisjZW5kaWYgLyog
X19EVF9CSU5ESU5HU19CTUlQU19CQ002MzI4X1BNX0ggKi8KLS0gCjIuMjYuMgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
