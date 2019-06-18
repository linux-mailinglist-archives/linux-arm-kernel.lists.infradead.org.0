Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2D84AD45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b8p6+CSOJeT7pDS8TYDD0eceuHIkyh0kD6IY/qq8Msw=; b=ooDyvcCd947Hz7
	4//O4pUbWg0qOglbOUTn3yOmeb26Tn1p5GqTUetpIUr1jRcTOa5yEv3OnknfqlfRR//fbty/GKdpl
	NJ29hatf84t0tKI4p2+nu+2QDx/ay9lphf0qm2DLXLn1SxT/keE6ulSNayFv7SodIj06nlEjBx2Oi
	AMakqNcyvbQ8DZtOMOARPR7k/9Ys5YJLl0CD/yDKLJR3ynl6Pn0yalMCi6MYzuXjkZf3BnM6H8+bq
	jKcAtU6J2BKqmkgOBvl448wGjdWXMuPKq7GyXunseJcm1MYRGO2I9F9Naz69880V5pwPCkJaHLszC
	XNfWjuZQDyzLhAEp+I8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLZl-0000jz-Fg; Tue, 18 Jun 2019 21:23:33 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLYq-0008TM-KB
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:22:38 +0000
Received: by mail-io1-f65.google.com with SMTP id s7so33147955iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 14:22:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oMHPI35360QufLzN+4Af6FW7H+HNv6sQR/L9S4vlS8g=;
 b=r9wK2PmYlB5++TWk+M658vWaed6m7FzZosd5fbJ5v/3LUw3FJq5h+zlGE2jfkdUOOO
 m8dgYRQHWBmOe1v9OSbhYB+cNwKMYWkeU3X1xAlqRg6GiRitN4b4xYFLbYTndBHeTqyI
 627Gf1nZpQ5k7eD6GqSm6Za1eqwb+0N8qd4qA6UErmeX/t6Ejte4A6mnfbcNCnbYg3iF
 mw1l4XULqs3QjJ63SU+b7+aLvPT8IpCehXtqs+sY0ds9tM1te5QdAwukJD0cPDhy/XY1
 DWs7ifl5g1mKAOjvYDokJEEb3dndpshZyLpMGlBP5fYoCMuq1sWGWqbdv8dB/xed0pEK
 oftA==
X-Gm-Message-State: APjAAAWYV310hig2a8+P+CILdJ1RMeNchlyumq2A0GwnFuXHMFkZukrU
 uZYgNHr5qqyulXyO3ViZew==
X-Google-Smtp-Source: APXvYqxzfgOcDR9cnTkVTzVzzuH6pKPixOSFtXOrtwcaLc+HIdWrrCqbV9V68mP6sK4aBGUAPNzzGQ==
X-Received: by 2002:a05:6602:220d:: with SMTP id
 n13mr3726065ion.104.1560892955748; 
 Tue, 18 Jun 2019 14:22:35 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
 by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 14:22:35 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings to
 json-schema
Date: Tue, 18 Jun 2019 15:22:28 -0600
Message-Id: <20190618212229.32302-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_142236_682244_AB83887A 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q29udmVydCBSREEgTWljcm8gU29DIGJpbmRpbmdzIHRvIERUIHNjaGVtYSBmb3JtYXQgdXNpbmcg
anNvbi1zY2hlbWEuCgpDYzogIkFuZHJlYXMgRsOkcmJlciIgPGFmYWVyYmVyQHN1c2UuZGU+CkNj
OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3Jn
PgpTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgotLS0KQW5kcmVh
cywgVXBkYXRlIHRoZSBsaWNlbnNlIG9uIHRoaXMgb25lIHRvbyB0byBkdWFsIGxpY2Vuc2VkIGlm
IHlvdSAKd2FudC4KCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JkYS50
eHQgfCAxNyAtLS0tLS0tLS0tLS0tLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmRh
LnlhbWwgICAgICAgICAgfCAyMCArKysrKysrKysrKysrKysrKysrCiBNQUlOVEFJTkVSUyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCAy
MSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JkYS50eHQKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JkYS55YW1sCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZGEudHh0IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZGEudHh0CmRlbGV0ZWQgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCA0M2M4MDc2MmM0MjguLjAwMDAwMDAwMDAwMAotLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JkYS50eHQKKysrIC9kZXYvbnVsbApA
QCAtMSwxNyArMCwwIEBACi1SREEgTWljcm8gcGxhdGZvcm1zIGRldmljZSB0cmVlIGJpbmRpbmdz
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCi0KLVJEQTg4MTBQTCBT
b0MKLT09PT09PT09PT09PT0KLQotUmVxdWlyZWQgcm9vdCBub2RlIHByb3BlcnRpZXM6Ci0KLSAt
IGNvbXBhdGlibGUgOiAgbXVzdCBjb250YWluICJyZGEsODgxMHBsIgotCi0KLUJvYXJkczoKLQot
Um9vdCBub2RlIHByb3BlcnR5IGNvbXBhdGlibGUgbXVzdCBjb250YWluLCBkZXBlbmRpbmcgb24g
Ym9hcmQ6Ci0KLSAtIE9yYW5nZSBQaSAyRy1Jb1Q6ICJ4dW5sb25nLG9yYW5nZXBpLTJnLWlvdCIK
LSAtIE9yYW5nZSBQaSBpOTY6ICJ4dW5sb25nLG9yYW5nZXBpLWk5NiIKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmRhLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JkYS55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uNTFjZWMyYjYzYjA0Ci0tLSAvZGV2L251bGwKKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZGEueWFtbApAQCAtMCwwICsxLDIw
IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCislWUFNTCAxLjIKKy0tLQor
JGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9hcm0vcmRhLnlhbWwjCiskc2NoZW1h
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6
IFJEQSBNaWNybyBwbGF0Zm9ybXMgZGV2aWNlIHRyZWUgYmluZGluZ3MKKworbWFpbnRhaW5lcnM6
CisgIC0gTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJv
Lm9yZz4KKworcHJvcGVydGllczoKKyAgY29tcGF0aWJsZToKKyAgICBpdGVtczoKKyAgICAgIC0g
ZW51bToKKyAgICAgICAgICAtIHh1bmxvbmcsb3JhbmdlcGktMmctaW90ICAgICAjIE9yYW5nZSBQ
aSAyRy1Jb1QKKyAgICAgICAgICAtIHh1bmxvbmcsb3JhbmdlcGktaTk2ICAgICAgICAjIE9yYW5n
ZSBQaSBpOTYKKyAgICAgIC0gY29uc3Q6IHJkYSw4ODEwcGwKKworLi4uCmRpZmYgLS1naXQgYS9N
QUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCmluZGV4IDJjNmY0ZDE1ODA1ZS4uNTZlZTI3NjA4OGVi
IDEwMDY0NAotLS0gYS9NQUlOVEFJTkVSUworKysgYi9NQUlOVEFJTkVSUwpAQCAtMjExMSw3ICsy
MTExLDcgQEAgRjoJYXJjaC9hcm0vYm9vdC9kdHMvcmRhODgxMHBsLSoKIEY6CWRyaXZlcnMvY2xv
Y2tzb3VyY2UvdGltZXItcmRhLmMKIEY6CWRyaXZlcnMvaXJxY2hpcC9pcnEtcmRhLWludGMuYwog
RjoJZHJpdmVycy90dHkvc2VyaWFsL3JkYS11YXJ0LmMKLUY6CURvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcmRhLnR4dAorRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9yZGEueWFtbAogRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2ludGVycnVwdC1jb250cm9sbGVyL3JkYSw4ODEwcGwtaW50Yy50eHQKIEY6CURvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvcmRhLDg4MTBwbC11YXJ0LnR4dAogRjoJRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL3JkYSw4ODEwcGwtdGltZXIudHh0
Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
