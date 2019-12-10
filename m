Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A257118F43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:47:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bktek1i7Hv3QjxQMYdYwH0RziMTFFS+mxhCkgneb3mQ=; b=mZfjJ54GqaI38N
	jQmx2A+i0/AxgAeA6FAXzItWnk85yKkrLV1w4hedejWJsmzgOB/fr3GmOqKqN1gw93ahb/oELx1eL
	eZF1r5DchFGiUURmXmhlKcYCJ2N2uOMLlFmFla27sCAYbmIdU41/IjTRJ0bwIgt6SqKf/58xmReIe
	wbgOETvXEmBUDM/Jjhkf0xrfnHjSAyLHsoCq/TCLCPwWcLYl5qFS/RBQ/jq3KjauF5XyHG1Wd2Qh2
	AKIWhs+CGlBHSaYbMRmHbJ1dxYBj5lz8Fk6eKHF5vYLH1ZJio7rybXdigxZJRnPISoDoyEO5n3SKI
	yQFvGZlRxXcmzX1sokNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iejbk-0006n7-OQ; Tue, 10 Dec 2019 17:47:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejbb-0006mf-Ow
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 17:47:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so21075443wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 09:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pB5aeFO1410E6SGmKnOdXbn7rGZMrphLj2vjpPn/Q54=;
 b=tZLox4/DcbVLjr0GuKmEUZ40aNSAzAUtXPNsdWDCbuh/YucUzlcc3IO9PvmIXMJrwT
 KInAl4ad0Xe1fZrHkiU98FAJCxGyMhGD+vv5Cn/3E5cC8BML1uGijPRDCYIA1p8GMu8K
 mQLsTGnCnRAow9YGWhSDdbXybSYxkyiibX9TOBXC/s4mjNX4JzuBQ1uG65w6jPdGBMIB
 DGwqFkiCMaZc/iQCqAs8xblVQgkP4h5bt5BSv76IGx8OW0aXyXsiP/B9e/9eKCJMesbH
 pKx6nSMO4ihtGy7UlpzVcgyOq/OTaESIt/Qp0AROW4eCHHXaEJgoDFefn4e8ybgFfTGf
 5TFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pB5aeFO1410E6SGmKnOdXbn7rGZMrphLj2vjpPn/Q54=;
 b=WqF/lHrC7fiFo2MesaQ80LhhihVFKIjtl8BhZPqJUnSK+SO6G2TsHzzQJsW7FtdyeH
 hAPIDJOLAeWrR63zGoZ4IfTgXEWotgPECLU3ohsnLRsGH5o4cjmByweIXpXem8OOBu0a
 +iaZBOHpVi3HAVuVFMXGlUq8qONfyc9fPLIsBQU6yhw9/bvNuBEpyUf5azd20CI1+een
 LIKvqJoQVUYTP4ugei1vRwiTseF5NayMZ2VfgORyTVPfVZ1vyzryS+vuTQIj3r1300N1
 TjNJiN3pxXouF8c4S+ZR/ehqSWxmGbRvYQTtQ3ia43cqbyoIn3xo2+9xgZR5Jm4efzdb
 BZiA==
X-Gm-Message-State: APjAAAUIt4J9RUXgWTsrzG8zlJGifLnPyH7+gwqI78Q203tBKOmjYJd6
 YcSf0S1vOgl9v57dlFZ9BNs=
X-Google-Smtp-Source: APXvYqz/yJP6QpGzZqSAc9mGuduUlZcsBSpQ40KMnzjM4er7cgiFR/7ZbB/7mnLGr6iMRnmun5xyEA==
X-Received: by 2002:adf:f990:: with SMTP id f16mr4772626wrr.185.1576000046349; 
 Tue, 10 Dec 2019 09:47:26 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id s8sm3966040wrt.57.2019.12.10.09.47.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 09:47:25 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH] dt-bindings: pwm: allwinner: Fix missing header in H6 example
Date: Tue, 10 Dec 2019 18:47:10 +0100
Message-Id: <20191210174710.10649-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_094727_809029_98677288 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGF0ZXN0IGxpbnV4LW5leHQgZG9lc24ndCBidWlsZCBkdWUgdG8gdGhlIGZvbGxvd2luZyBlcnJv
cjoKCkVycm9yOiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5l
cixzdW40aS1hMTAtcHdtLmV4YW1wbGUuZHRzOjM1LjM3LTM4CnN5bnRheCBlcnJvcgpGQVRBTCBF
UlJPUjogVW5hYmxlIHRvIHBhcnNlIGlucHV0IHRyZWUKbWFrZVsxXTogKioqIFtEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLmV4YW1w
bGUuZHQueWFtbF0KRXJyb3IgMQoKVGhpcyBpcyBkdWUgdG8gbWlzc2luZyBoZWFkZXIgaW4gdGhl
IGRldmljZS10cmVlIHlhbWwgZXhhbXBsZS4KCkZpeCB0aGlzIGJ5IGFkZGluZyB0aGUgbWlzc2lu
ZyBoZWFkZXJzLgoKRml4ZXM6IDRlZTkyOWIzZjA4ZSAoImR0LWJpbmRpbmdzOiBwd206IGFsbHdp
bm5lcjogQWRkIEg2IFBXTSBkZXNjcmlwdGlvbiIpClJlcG9ydGVkLWJ5OiBSb2IgSGVycmluZyA8
cm9iaCtkdEBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5u
ZXIsc3VuNGktYTEwLXB3bS55YW1sICAgICAgIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwKaW5kZXggYTdk
YzE5ZmMzNDdhLi5mYWI4OWYwNTI0NTAgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdt
LnlhbWwKQEAgLTkzLDYgKzkzLDkgQEAgZXhhbXBsZXM6CiAgICAgfTsKIAogICAtIHwKKyAgICAj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svc3VuNTBpLWg2LWNjdS5oPgorICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9yZXNldC9zdW41MGktaDYtY2N1Lmg+CisKICAgICBwd21AMzAwYTAwMCB7
CiAgICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtcHdtIjsKICAgICAgIHJl
ZyA9IDwweDAzMDBhMDAwIDB4NDAwPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
