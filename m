Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A53419EA96
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 12:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OgwkPpa86c4ontvIds67Jh/b8XQcb8b90Ts/0lwDL4=; b=S4F+OWgFyGjctY
	AeX3NsQXsGWq8Z+NxIuSybUuqMctGtTOF5/uKn4DfDC/GQML9/rkUU+xzrIWJNaFQTF2eUgDU9/RN
	YfCl3UiCHeDDXLRp67Dc3aDADvfeRE0NlkXNfYaGIimwWPoynSO9QJL1pFSHUkEC3nbGQ5XBUcfLK
	ru7xP9B59QX5p0pMPnA9GhW5itPS9Z3npaP3qaoJEjvdJdjT1GOwtWcn1k+jlwMFn6Rh+0NlXOKvH
	S5AZP1HbvZmLlCxrNw8tQYN2+WO/CaQL44dTUeRwFCIgH09ruVnfCbvdLNjDcQik4f/JT75br9dQg
	l+48FAxt3YxRqoyofZww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL2rO-00088E-1B; Sun, 05 Apr 2020 10:50:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL2qA-00051x-6l
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 10:49:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so13867363wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 03:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kf/zKaXETW/6458P4s0u4NU6tE49BufLG2XcDtV/oYY=;
 b=BKb8O+gruVcuzrvJ+jdE4CH0Kx7gHmxQkao3riTtUm5F/RkBe/gJO8ylyyPjDhUiOc
 pfvN+GFiJ1qgUlcGzTajqhFVefA9KLugJmEbLM8ZUDZxdQmIrf7rWptyP5GhhtpUPPLd
 sx9Xv9JnYsgoPuTESmDetFf63Cev90TiEd6uGH8ju8QAGGpfoJSPu7dJNmV96vcoaSr1
 ypDIC9+5Q3BpDVCY9MXYpmAlUgNe2zjTMTjW9dr0doerX1kUt4ynUup7FZTKd0f0HZIe
 ZMzmhmb3fSQQxq9nWVcauYe6H7A43o2rbfNTd5+L8IBX0OzZR8KwlyHNxCjyTPD/3ycv
 Gl0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kf/zKaXETW/6458P4s0u4NU6tE49BufLG2XcDtV/oYY=;
 b=i2r3qwOJytRJrpqtaxY8mvmjnlqwqEqhlmmokhOKdPiTVwoVY8Y30UeV5dIM6Af8HT
 FZGBV3W4iWtpUkwJpyOqOqv3Q4FMj79lHixb/eAROSPghWpeKqbo9DVzd+LKvaoFeDIs
 xsgUtMdDkuwD2EiF/7rmbmOI/bFVgKxVds5NkfiAyVoK+8kM50OvTlNbK8o77wtymke6
 kUyqFOryrqoEWVXCdz6Cf+iYxEtTDAP84bgEA5MLRD8wiOBbXR1nvgkj302OCsACebbA
 jdFTFDcZitBuIypNS1nmf7rWgpJmEwmy0gWbXI1rU7ooWlCTKn2GO8Wq5eWRJjMfjUvJ
 T0Mg==
X-Gm-Message-State: AGi0Pua5gCzlHspvFXPDGbGdLWIuWBqB1kamjjCtF5yam/fx3bLHuUl0
 jyf/b7jnnUES7ruLNlzBpoo=
X-Google-Smtp-Source: APiQypKHu20FrbfSe0fDwBKWYRQzJF4KCRaS0O42RnvhISY1odqSGlpPzlujLCquM1gMQbnxl270vA==
X-Received: by 2002:a05:6000:1142:: with SMTP id
 d2mr17526555wrx.320.1586083760663; 
 Sun, 05 Apr 2020 03:49:20 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id u13sm21606411wru.88.2020.04.05.03.49.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 03:49:19 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 4/7] arm64: dts: allwinner: h6: Add CPU Operating Performance
 Points table
Date: Sun,  5 Apr 2020 12:49:10 +0200
Message-Id: <20200405104913.22806-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405104913.22806-1-peron.clem@gmail.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_034922_254382_0F250712 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+CgpBZGQgYW4gT3BlcmF0aW5n
IFBlcmZvcm1hbmNlIFBvaW50cyB0YWJsZSBmb3IgdGhlIENQVSBjb3JlcyB0bwplbmFibGUgRHlu
YW1pYyBWb2x0YWdlICYgRnJlcXVlbmN5IFNjYWxpbmcgb24gdGhlIEg2LgoKU2lnbmVkLW9mZi1i
eTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+ClNpZ25lZC1vZmYtYnk6IENsw6lt
ZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogLi4uL2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpIHwgMTAzICsrKysrKysrKysrKysrKysrKwogYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgICA0ICsKIDIgZmls
ZXMgY2hhbmdlZCwgMTA3IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWNwdS1vcHAuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1jcHUtb3BwLmR0c2kKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5iNDgwYzMzZjQyNmIKLS0tIC9k
ZXYvbnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1
LW9wcC5kdHNpCkBAIC0wLDAgKzEsMTAzIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjArIE9SIE1JVCkKKy8vIENvcHlyaWdodCAoQykgMjAyMCBPbmRyZWogSmlybWFuIDxt
ZWdvdXNAbWVnb3VzLmNvbT4KKy8vIENvcHlyaWdodCAoQykgMjAyMCBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgorCisvIHsKKwljcHUwX29wcF90YWJsZTogb3BwX3RhYmxl
MCB7CisJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1vcGVyYXRpbmctcG9pbnRz
IjsKKwkJbnZtZW0tY2VsbHMgPSA8JnNwZWVkYmluX2VmdXNlPjsKKwkJb3BwLXNoYXJlZDsKKwor
CQlvcHBANDgwMDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAz
MmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw0ODAwMDAwMDA+OworCisJCQlv
cHAtbWljcm92b2x0LXNwZWVkMCA9IDw4ODAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDEg
PSA8ODIwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDgyMDAwMD47CisJCX07CisK
KwkJb3BwQDcyMDAwMDAwMCB7CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDgg
MzJrIHBlcmlvZHMgKi8KKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NzIwMDAwMDAwPjsKKworCQkJ
b3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8ODgwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQx
ID0gPDgyMDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDw4MjAwMDA+OworCQl9Owor
CisJCW9wcEA4MTYwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+OyAvKiA4
IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDgxNjAwMDAwMD47CisKKwkJ
CW9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDg4MDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVk
MSA9IDw4MjAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDIgPSA8ODIwMDAwPjsKKwkJfTsK
KworCQlvcHBAODg4MDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyog
OCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw4ODgwMDAwMDA+OworCisJ
CQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDw4ODAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVl
ZDEgPSA8ODIwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDgyMDAwMD47CisJCX07
CisKKwkJb3BwQDEwODAwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+OyAv
KiA4IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEwODAwMDAwMDA+Owor
CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDw5NDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1z
cGVlZDEgPSA8ODgwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDg4MDAwMD47CisJ
CX07CisKKwkJb3BwQDEzMjAwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+
OyAvKiA4IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEzMjAwMDAwMDA+
OworCisJCQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDwxMDAwMDAwPjsKKwkJCW9wcC1taWNyb3Zv
bHQtc3BlZWQxID0gPDk0MDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDw5NDAwMDA+
OworCQl9OworCisJCW9wcEAxNDg4MDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0
MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwxNDg4MDAw
MDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTA2MDAwMD47CisJCQlvcHAtbWlj
cm92b2x0LXNwZWVkMSA9IDwxMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDEw
MDAwMDA+OworCQl9OworCisJCW9wcEAxODAwMDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMg
PSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwx
ODAwMDAwMDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTE2MDAwMD47CisJCQlv
cHAtbWljcm92b2x0LXNwZWVkMSA9IDwxMTAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQy
ID0gPDExMDAwMDA+OworCQl9OworCX07Cit9OworCismY3B1MCB7CisJb3BlcmF0aW5nLXBvaW50
cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+OworCSNjb29saW5nLWNlbGxzID0gPDI+OworfTsKKwor
JmNwdTEgeworCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmNwdTBfb3BwX3RhYmxlPjsKKwkjY29v
bGluZy1jZWxscyA9IDwyPjsKK307CisKKyZjcHUyIHsKKwlvcGVyYXRpbmctcG9pbnRzLXYyID0g
PCZjcHUwX29wcF90YWJsZT47CisJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cit9OworCismY3B1MyB7
CisJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+OworCSNjb29saW5nLWNl
bGxzID0gPDI+OworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kKaW5kZXggYzNlNGYwOWY2MGNlLi5hOTMwNGZlYzI0NWMgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCisrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCkBAIC0yNTMsNiArMjUzLDEwIEBACiAJ
CQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJCSNzaXplLWNlbGxzID0gPDE+OwogCisJCQlzcGVl
ZGJpbl9lZnVzZTogc3BlZWRAMWMgeworCQkJCXJlZyA9IDwweDFjIDB4ND47CisJCQl9OworCiAJ
CQl0aHNfY2FsaWJyYXRpb246IHRoZXJtYWwtc2Vuc29yLWNhbGlicmF0aW9uQDE0IHsKIAkJCQly
ZWcgPSA8MHgxNCAweDg+OwogCQkJfTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
