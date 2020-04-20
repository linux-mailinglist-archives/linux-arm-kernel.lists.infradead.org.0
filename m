Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473101B0C17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1I/7L3Jr9hfOpfQg4MQ/lEaEzR4wtHx0XLtEGBMWQYY=; b=hN2swQuZhEkHiD
	0qnK76YkmcNaYyoa72nSeC6iFVlArMXy0yjva1gejydgWDdaLSKoJpVkaV+sZwoYPt5yQNCIGn3PW
	nILywsYp8XM6sFtzlo8o+DlaSd785PSDgeuaMcW6Ngk2nFIN7goudaIRa7BXGI0VqBIby0HH2/FkW
	pElRwM1thutOjwgZYC5R+SRqI5BCyW8hfrVXn6cx2ZdUPxkOtZmYNqhu0AKKwGF0NP162irNtsxXf
	LRFQ226YLcroJcqboabkabmjcAjWhuxIrx6sLDvQYhUX5eAtQcD2KyqrJaK//r87zc1boyRN3V34+
	LLeCr9hboCfu+HvilIVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW2T-0003Fs-V9; Mon, 20 Apr 2020 13:00:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2D-0003EZ-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id u16so2653275wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hLRkNUC0u8y4cndEyQmhJ4/AMRxri6A7MsmPh0pI6+0=;
 b=Guafrsrt31ugkSwaonhtK4a4Hphyi0I7eEyxYe+CjssxoStxFkwfW8u33foia70FUe
 J+B8nta1g7jcV9SFm4uMFkyqlZGttssBNRy5qO47cLYTFjw65OD8q6fwwL5PjZGYi+5D
 CdfWUKOUW1rS8BSq8HeG3xnlkv0HdEFef4r1Mxs6bH1reC9qsWYeRkPRhnMnc1d05n2l
 3s/VJNSRzN9dijfHwutPDyiVImaeCF1/ZPj+mw8PjvEaoJClOXFEWlOW9tO8mb+etML0
 Djf4x0OtY+R7l2OA6o2KcVbQQ666KPGquDZlOUlcnK/hK5d7GWnIc8nB/B7A+KgPP/Qk
 KfNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hLRkNUC0u8y4cndEyQmhJ4/AMRxri6A7MsmPh0pI6+0=;
 b=Ln2w1VFAlXZEyRlqCT/yKLpSdAr5TpWr9utdQ1cnYfu/Cd7FS3lJQgT8duB+KeoLgs
 5/fLh1WQ8KDqNAGQsXpqKQeteQCrRAESS7bG5Iz30K+Up1CKhscfHJozTo9V1HvCqwl1
 /zXnvhZCoHojj7l+pAu1UsWrwfj4ndw5rwSzDX4x8xdshX4x+yaSgHPb8a00vHLdMJKr
 g1DRnAOK1MAvVFN6GCH09PYy1Xpb/yrcYCiVHF2wxtRIFsDtWiqIcwFw66Co6h26Rb6q
 jwiFuqMypkAqUZ5yeSyAJTQMEA6XsU7zpc5PJz29BOM2PevgQL8T0sJEGkmZKy3czI5q
 kFXg==
X-Gm-Message-State: AGi0PuYa8JqWSin/yhjaAAwQo4VqYmPrF8bCBuvOx6aCAXTmHld4Hdlz
 CncW9V6GPKCJN4jMB9p0Jys=
X-Google-Smtp-Source: APiQypLQWZp2tO6tV7r3+Yt3ozomCC/p/Kk9A59i6gZud1dPxFUxRQnxr7sVEOETuwb9WfTMxhZomQ==
X-Received: by 2002:a1c:bb08:: with SMTP id l8mr19245449wmf.168.1587387624237; 
 Mon, 20 Apr 2020 06:00:24 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:23 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 0/9] Add support for Allwinner H6 DVFS
Date: Mon, 20 Apr 2020 15:00:12 +0200
Message-Id: <20200420130021.3841-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060025_716297_08300176 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIHRoZSBzYW1lIGFzIHY0IGFuZCB2MyBvbiB0b3AuCkkgaGF2ZSBhbHNvIGZp
eCB0aGUgY29tbWl0IHRpdGxlIGZvciBQaW5lIEg2NCBhcyB3ZSBub3cgb25seSBlbmFibGUgQ1BV
IERWRlMuCgpTb3JyeSBmb3IgdGhlIG5vaXNlLApDbMOpbWVudAoKQ2zDqW1lbnQgUMOpcm9uICg2
KToKICBhcm02NDogY29uZmlnczogRW5hYmxlIHN1bjUwaSBjcHVmcmVxIG52bWVtCiAgYXJtNjQ6
IGR0czogYWxsd2lubmVyOiBoNjogRW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBCZWVsaW5rIEdT
MQogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEVuYWJsZSBDUFUgb3BwIHRhYmxlcyBmb3Ig
T3JhbmdlIFBpIDMKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIG9wcCB0
YWJsZXMgZm9yIFRhbml4IFRYNgogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogU29ydCBQaW5lIEg2
NCBkZXZpY2UtdHJlZSBub2RlcwogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEVuYWJsZSBD
UFUgb3BwIHRhYmxlcyBmb3IgUGluZSBINjQKCk9uZHJlaiBKaXJtYW4gKDIpOgogIGFybTY0OiBk
dHM6IGFsbHdpbm5lcjogaDY6IEFkZCB0aGVybWFsIHRyaXAgcG9pbnRzL2Nvb2xpbmcgbWFwCiAg
YXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogQWRkIENQVSBPcGVyYXRpbmcgUGVyZm9ybWFuY2Ug
UG9pbnRzIHRhYmxlCgpZYW5ndGFvIExpICgxKToKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2
OiBBZGQgY2xvY2sgdG8gQ1BVIGNvcmVzCgogLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJl
ZWxpbmstZ3MxLmR0cyAgIHwgICA5ICstCiAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1jcHUtb3BwLmR0c2kgfCAxMjEgKysrKysrKysrKysrKysrKysrCiAuLi4vZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYtb3JhbmdlcGktMy5kdHMgICAgfCAgIDMgKwogLi4uL2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzIHwgIDQzICsrKystLS0KIC4uLi9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi10YW5peC10eDYuZHRzICAgICB8ICAxMyArKwogYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgIDM2ICsrKysrKwogYXJjaC9hcm02NC9j
b25maWdzL2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgIHwgICAxICsKIDcgZmlsZXMgY2hhbmdl
ZCwgMjA3IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1jcHUtb3BwLmR0c2kKCi0t
IAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
