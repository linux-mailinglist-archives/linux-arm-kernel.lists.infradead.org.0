Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C3A1F90F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FM/rRhEjO//kO7bxjNdtLG3E7AGuCJXFpFuFEyN9USg=; b=qX4DwF7ZdwJMMK
	Q9sIu4QbBMEvov9oExMUFvnb8WIKF0RF+n+p01JnnGG1MIGX+w40IW5JnLzXPePM/+e1G0MxEW5oB
	hEvqeA1j6GJMWkF22lAIl51uWdrpNLcOxkefxbIX0iw0twZ5f3cI8K69ATULuV2Y1/CGDgERzGZgm
	xowV1U7WJWhWd0eSPPK9Sy3CRhPf6Ars/S7crdHiXD/f3OleIqFDQPZopdWZLbg2i1WVpOmQDHQvX
	a0M91mw0FQqCTbFMpJxjzvoTu1JDGrT+5iAWCbPq/xxee/KsnTVXOuFkAbyyAaR43b4zIgzESHc8n
	ClM0exvIaIFcKm6NYiYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkk6U-00082R-Gt; Mon, 15 Jun 2020 08:04:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkk5M-00079c-FD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:03:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id x14so16050676wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 01:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yyxGbzg5FRRWYSJHpphoCM/7g3fdi4Cub/m4VF29fJ8=;
 b=aHrtiM4IgI231hsx5aGRUbfgOB/VAF55Jfu3aNyk3m+Wflrr1n9/1n5Bxze4ib0Twt
 HXF3rWSwGj5ULWJDTUHCAifQ3RwzcrJ6DTzQR2riuPsWiOcsxfs/qWIZEisZelML3wmJ
 LvcFKmx3ZM/vHUGPswD/og9g0aZ7yHhixoUXEoJzHooAho+sRfZ3sC+EbjUKkPb0BsQX
 lYuhVWc847T9ljikOITJBhvEXmeKNJihRFAt35HbiOr+9EPWBklwiODBwdZkQS+ML3GN
 9d5n4KeIwqySxKHYo8eYWLD3J2gqohgk54AfltJV3ymIV+T8tMGYBr2w4foLAa9pE57K
 ZvTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yyxGbzg5FRRWYSJHpphoCM/7g3fdi4Cub/m4VF29fJ8=;
 b=MOwi0NChcwJxSJaAPQUY0I6fsM6yhWaSfLdbaBgCGqLGnl6mE3UMHmPfEtlIbnfKlr
 B4ytCglaWeuts1Amg3pdKxhdVFxXIOelfUYyiG902A2fgzJQw5HjviTvskp7UApvye6N
 F+C35UnSB3gXJIJZ42CX+1Cj+sl2sB3nIEJ1ybNCFvLnsBqCY5P6Qf0zZ1ei184FquYw
 ppkmSslf8kj1cOWJ2lDak1tAH5OViVjyAplrCOXhAyUT69mGINyQdi0GNwyR+lBoUb3I
 RdtABs+ksLqHtQ7zRh+k+wbf9BXLcs/9bUxPtjuiNSWYCeqwHtSTDJWAmbGvdabiAo+X
 q+7g==
X-Gm-Message-State: AOAM531fMotSYlc3YRC1uKLhXXA7fyAqbLX4aesvvHYj0FPzlk2kkGyB
 ufw0Auth7EDLIGJKHz4kY+s=
X-Google-Smtp-Source: ABdhPJyVfOfRWwPytyd/13wO0uW8sOuZZgWpictu6cZsZyACR5rnquhjY++l8vHSdSL1yyxVcvj/pg==
X-Received: by 2002:adf:fd49:: with SMTP id h9mr28169413wrs.67.1592208193774; 
 Mon, 15 Jun 2020 01:03:13 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id d9sm23107054wre.28.2020.06.15.01.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 01:03:13 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] spi: bcm63xx-hsspi: add reset support
Date: Mon, 15 Jun 2020 10:03:08 +0200
Message-Id: <20200615080309.2897694-4-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615080309.2897694-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_010316_531635_0225E800 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

YmNtNjN4eCBhcmNoIHJlc2V0cyB0aGUgSFNTUEkgY29udHJvbGxlciBhdCBlYXJseSBib290LiBI
b3dldmVyLCBibWlwcyBhcmNoCm5lZWRzIHRvIHBlcmZvcm0gYSByZXNldCB3aGVuIHByb2Jpbmcg
dGhlIGRyaXZlci4KClNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9s
dGFyaUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9zcGkvc3BpLWJjbTYzeHgtaHNzcGkuYyB8IDE3
ICsrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3NwaS1iY202M3h4LWhzc3BpLmMgYi9kcml2ZXJzL3NwaS9z
cGktYmNtNjN4eC1oc3NwaS5jCmluZGV4IDZjMjM1MzA2YzBlNC4uYTIwYTBiODhjMjNhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC1oc3NwaS5jCisrKyBiL2RyaXZlcnMvc3Bp
L3NwaS1iY202M3h4LWhzc3BpLmMKQEAgLTIwLDYgKzIwLDcgQEAKICNpbmNsdWRlIDxsaW51eC9z
cGkvc3BpLmg+CiAjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KICNpbmNsdWRlIDxsaW51eC9vZi5o
PgorI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+CiAKICNkZWZpbmUgSFNTUElfR0xPQkFMX0NUUkxf
UkVHCQkJMHgwCiAjZGVmaW5lIEdMT0JBTF9DVFJMX0NTX1BPTEFSSVRZX1NISUZUCQkwCkBAIC0z
MzQsNiArMzM1LDcgQEAgc3RhdGljIGludCBiY202M3h4X2hzc3BpX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiAJc3RydWN0IGNsayAqY2xrLCAqcGxsX2NsayA9IE5VTEw7CiAJ
aW50IGlycSwgcmV0OwogCXUzMiByZWcsIHJhdGUsIG51bV9jcyA9IEhTU1BJX1NQSV9NQVhfQ1M7
CisJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJlc2V0OwogCiAJaXJxID0gcGxhdGZvcm1fZ2V0X2ly
cShwZGV2LCAwKTsKIAlpZiAoaXJxIDwgMCkKQEAgLTM0OCwxMCArMzUwLDI1IEBAIHN0YXRpYyBp
bnQgYmNtNjN4eF9oc3NwaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlm
IChJU19FUlIoY2xrKSkKIAkJcmV0dXJuIFBUUl9FUlIoY2xrKTsKIAorCXJlc2V0ID0gZGV2bV9y
ZXNldF9jb250cm9sX2dldChkZXYsIE5VTEwpOworCWlmIChJU19FUlIocmVzZXQpKSB7CisJCXJl
dCA9IFBUUl9FUlIocmVzZXQpOworCQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCisJCQlkZXZf
ZXJyKGRldiwKKwkJCQkiZmFpbGVkIHRvIGdldCByZXNldCBjb250cm9sbGVyOiAlZFxuIiwgcmV0
KTsKKwkJcmV0dXJuIHJldDsKKwl9CisKIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoY2xrKTsK
IAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJcmV0ID0gcmVzZXRfY29udHJvbF9yZXNldChy
ZXNldCk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byByZXNldCBkZXZp
Y2U6ICVkXG4iLCByZXQpOworCQlnb3RvIG91dF9kaXNhYmxlX2NsazsKKwl9CisKIAlyYXRlID0g
Y2xrX2dldF9yYXRlKGNsayk7CiAJaWYgKCFyYXRlKSB7CiAJCXBsbF9jbGsgPSBkZXZtX2Nsa19n
ZXQoZGV2LCAicGxsIik7Ci0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
