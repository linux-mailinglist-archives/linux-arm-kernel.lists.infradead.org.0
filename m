Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F783709A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gX1Yyum/i/Qducu09C1+bgn3Kwq/3qskhs6eOZh4erQ=; b=ebbQFJHvoK+j0U
	hSUkmv0QvSkrlySp7+yJt1Hf/VWOamzVXkIMFyJoWIyMqD8WK54UFxlD2xJWPLvhA7IJKgpZqZ4TI
	vyOFJEogELy+5NraGVrbIXoz7Ok7VetUQHEpk12MBQIfqnEeLIKIX2eRlKclsGqmI7yfP5d1zFpq+
	kQ4N2BjZj9aVLnZnVEBBDnGJETwMF3obI8tZWRtCGlVs64LB92iYfARZf6RWv89LItTIeqAXTJ78Y
	XfX09yXuSIDQ0RpBmMK3Eq0bysSRun+i0jCJNKBchM4l0HlEXH5q3SVt4t46WmdLkk3/OpSZMy/PU
	dUe6NFjcjJRyyTj58kNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdua-0000ge-6V; Mon, 22 Jul 2019 19:23:52 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdt9-00009K-JJ
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:22:25 +0000
Received: by mail-lf1-x141.google.com with SMTP id c19so27480134lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hlO4j1hJuCOJd1h1Hw9Dr7/Fw6jxqbEeyEo5OnuF750=;
 b=OBZ5VenYegly2ZmgB5apxAfAcbm+r7LzHEHc5zO9xF3ZIT2Nt/9Drpvjh6u0DKhL4X
 pgioTplB7ujqb0Sh+fw20i11enadUzceNFnS2VbQqnfBKZR0jyba/W7o/dXFSCrD4IXl
 ZSBK9kkwfBd8DYxsSQvOa8OGd70F+Afe+uPCwHniJDr7Nrqxc72SuJ1E6yZ6da0W807V
 VuXWRFqzgl6qQZI7iOVtLeHgxdsKSeWU2EhmF3VsYjqS2T3PT5RDVLGUFsKjkcQ/83I9
 oEMaYD+ZYZZcUB1bXJy1O4q/9i7UCZhZlvwCS4P6P+O9mivIu3ffWTgbCnSsE7x6/YM0
 N7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hlO4j1hJuCOJd1h1Hw9Dr7/Fw6jxqbEeyEo5OnuF750=;
 b=lbDuvzkH+I8PB8B+COnOTqDZIugFBNLu4CNjESsQrwvan0jnaponSsRPfCKA9Yokj5
 wviqZ8mgLdCsSDGfBHDt4lb0QoVY14tFBUOZeKKTBhowEb9r8S/Wl6U03YqLIangh/e7
 D/NfdeH0FWetYr68+uFDBaNzwnvKg1109BxstWRG2lXrehmMaiOYmcBKr4E3JuLd01kq
 iW5QPfQLTyDG+FlLKYVgLtmCTeHRTYYDdoXfDMBCV3pnoqFM34RR+EXany+HDDxl3f08
 HtgyVAubasj/geiZwb6eOKd2cYq4pO4vgyWo1cH4gx4/EqRLo0im68/4LbjmHT3SvTW3
 ATbQ==
X-Gm-Message-State: APjAAAV5+bF0sRvkVZ/XWC1OV4LCR8h7y6Sh6UYWsLh2axLqeIjGkOZB
 jBdD3WvPgO2+B/yx9xvPFSU=
X-Google-Smtp-Source: APXvYqwboXpIQejpdye+ead8X3EBEYoeyGI8KGKUyL2A6myeizX0W9lQ5Z68gTdkgvQR+MzbQJ3AiA==
X-Received: by 2002:ac2:4644:: with SMTP id s4mr32318959lfo.158.1563823341083; 
 Mon, 22 Jul 2019 12:22:21 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id n124sm6129307lfd.46.2019.07.22.12.22.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 12:22:20 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v6 1/3] serial: imx: set_termios(): do not enable autoRTS if
 RTS is unset
Date: Mon, 22 Jul 2019 22:22:09 +0300
Message-Id: <1563823331-5629-2-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563823331-5629-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563823331-5629-1-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_122223_635977_F4089A7E 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG9uJ3QgbGV0IHJlY2VpdmVyIGhhcmR3YXJlIGF1dG9tYXRpY2FsbHkgY29udHJvbCBSVFMgb3V0
cHV0IGlmIGl0CndhcyByZXF1ZXN0ZWQgdG8gYmUgaW5hY3RpdmUuCgpUbyBlbnN1cmUgdGhpcywg
c2V0X3Rlcm1pb3MoKSBzaG91bGRuJ3Qgc2V0IFVDUjJfQ1RTQyBiaXQgaWYgVUNSMl9DVFMKKD1U
SU9DTV9SVFMpIGlzIGNsZWFyZWQuIEFkZGVkIGNvcnJlc3BvbmRpbmcgY2hlY2sgaW4gaW14X3Vh
cnRfcnRzX2F1dG8oKQp0byBmaXggdGhpcy4KCkFja2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpSZXZpZXdlZC1ieTogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpUZXN0ZWQtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVl
ckBwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogU2VyZ2V5IE9yZ2Fub3YgPHNvcmdhbm92
QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgfCA3ICsrKysrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKaW5k
ZXggNTdkNmU2Yi4uMzJmMzZkOCAxMDA2NDQKLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL2lteC5j
CisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwpAQCAtNDA1LDcgKzQwNSwxMiBAQCBzdGF0
aWMgdm9pZCBpbXhfdWFydF9ydHNfaW5hY3RpdmUoc3RydWN0IGlteF9wb3J0ICpzcG9ydCwgdTMy
ICp1Y3IyKQogLyogY2FsbGVkIHdpdGggcG9ydC5sb2NrIHRha2VuIGFuZCBpcnFzIGNhbGxlciBk
ZXBlbmRlbnQgKi8KIHN0YXRpYyB2b2lkIGlteF91YXJ0X3J0c19hdXRvKHN0cnVjdCBpbXhfcG9y
dCAqc3BvcnQsIHUzMiAqdWNyMikKIHsKLQkqdWNyMiB8PSBVQ1IyX0NUU0M7CisJLyoKKwkgKiBP
bmx5IGxldCByZWNlaXZlciBjb250cm9sIFJUUyBvdXRwdXQgaWYgd2Ugd2VyZSBub3QgcmVxdWVz
dGVkIHRvIGhhdmUKKwkgKiBSVFMgaW5hY3RpdmUgKHdoaWNoIHRoZW4gc2hvdWxkIHRha2UgcHJl
Y2VkZW5jZSkuCisJICovCisJaWYgKCp1Y3IyICYgVUNSMl9DVFMpCisJCSp1Y3IyIHw9IFVDUjJf
Q1RTQzsKIH0KIAogLyogY2FsbGVkIHdpdGggcG9ydC5sb2NrIHRha2VuIGFuZCBpcnFzIG9mZiAq
LwotLSAKMi4xMC4wLjEuZzU3YjAxYTMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
