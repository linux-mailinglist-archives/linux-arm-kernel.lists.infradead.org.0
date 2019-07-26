Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8DD7647C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Zbm/mX2P1+syczLw0ULMwAjCQW5/FPSe7sLANacM4k=; b=qu99sTcUPHkUzb
	gFpo1KzVd0eBChHfzVU950PGjyp7uHBM0Q56XMTHB2PKRirrMbHVILWxbkdhkEyA0yYyWtTJ+sgTc
	vyJ35qpB0qdzDXC63WnAyyE/J9xIxsao2WI9h7eiSP6IrZUe9DUYeEvJyfVhq4YPHsZAXqJmmxauO
	Acg7HWEIaLihz8E4Ny9FyDI8bZGTiRbgg8yx/o52ZjKowx/idgT+1HVIoWMshbCqNCs1pyjcj7ws6
	32YO4ALfa22pTvyYnqD8Fwfnv5FYQ90kAvqu2iGAF5RPbGwnSIeHngJbRLZ8P071fZJvAJ+EdrCca
	4I7yV8cKzzhPmEU9bwMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyPw-0003C8-AS; Fri, 26 Jul 2019 11:29:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyNz-0001sx-Ca
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:27:44 +0000
Received: by mail-lj1-x241.google.com with SMTP id p17so51154833ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9OLH6fxuKgLOy3IQNpiLiTZEw036dSX/erXeaZiU+1g=;
 b=aFmOhWcwR9JZPomPlhuEjiQ+iDEneB3Fn7cOkOKbodtgm6JD4c5v+z03CMnc9Z1qxk
 N5BYlfwLuDrPYCgVEx3uT5AJu0lXJ0ERfEsfhZesnJczUQcmNVsgebr6Ip3WG9BeVgwT
 bhCer7qih/avaGN3NiV+P8ETiX3PBCjSocV402MD4r7vy4Mi73g9fagGvPdB2JtMOFEt
 WsTuzZ9t9fqOfCp5llHvN45J2SFvaESDfV1PoRj7h/LrkPxUJsgfIkZ+9b7g+XWoDhfn
 TL9as95m50nAnioG6EYMQZMj9cSITWohs2eXIEiiz2BGvN2Dj1b0Z16QjRT4Xo81Nrvz
 a45g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9OLH6fxuKgLOy3IQNpiLiTZEw036dSX/erXeaZiU+1g=;
 b=KqfJtUBbcwKHsnLJMiqzUy/5srUmq9IXLcOTNRXqXO1un/3XwBPzcEbtEJGIodVy/p
 UEe7qxkRtDGgk4obLIyhBNDz2HXV3aJirdqjCfUb2TZ/pecXYT/Ibc0+FDp4OFCdDge+
 ggVIs+2dNTQFyDSw0KSP1NOhobBZgVT+4QFQCBk1jQYSRgJZ3Emp0nvoCLXfLCz74EEm
 WtdnfR6uFchMx4cTCDr8hRuJf3xDIhJkxb/JzsZo8+5C8/o8V8e4/az8+vhewxEoOtdx
 Q6kp6V4dJuitn9z7Oq37Mo8bnTIk99oj3f+GvjJJwiiyEKhX20CrdDoyEntBU5VSWJ3F
 IT4g==
X-Gm-Message-State: APjAAAXJseXGfoA1wh7vAyGRFQHHqVgAIFNfT2KJJ29fpVU9bVN0d/jD
 vznTw/AKYczVWjcQG/e+gUniyw==
X-Google-Smtp-Source: APXvYqyLlEuVsq4S+ikz5rfIdN4QEBYo9a6hy0bII9lPMm8U6np7eGIUoQxz+vtDcvLauvKnwlRzhw==
X-Received: by 2002:a2e:9250:: with SMTP id v16mr48826921ljg.89.1564140461541; 
 Fri, 26 Jul 2019 04:27:41 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id w6sm8239195lff.80.2019.07.26.04.27.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:27:40 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH] arm_pmu: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:27:37 +0200
Message-Id: <20190726112737.19309-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042743_474526_0D43C4E9 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9s
bG93aW5nIHdhcm5pbmcKd2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6CgouLi9kcml2ZXJzL3BlcmYv
YXJtX3BtdS5jOiBJbiBmdW5jdGlvbiDigJhjcHVfcG1fcG11X25vdGlmeeKAmToKLi4vZHJpdmVy
cy9wZXJmL2FybV9wbXUuYzo3MjY6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwK
IHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICBjcHVfcG1fcG11X3NldHVwKGFy
bXBtdSwgY21kKTsKICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KLi4vZHJpdmVycy9w
ZXJmL2FybV9wbXUuYzo3Mjc6Mjogbm90ZTogaGVyZQogIGNhc2UgQ1BVX1BNX0VOVEVSX0ZBSUxF
RDoKICBefn5+CgpSZXdvcmsgc28gdGhhdCB0aGUgY29tcGlsZXIgZG9lc24ndCB3YXJuIGFib3V0
IGZhbGwtdGhyb3VnaC4KCkZpeGVzOiBkOTM1MTJlZjBmMGUgKCJNYWtlZmlsZTogR2xvYmFsbHkg
ZW5hYmxlIGZhbGwtdGhyb3VnaCB3YXJuaW5nIikKU2lnbmVkLW9mZi1ieTogQW5kZXJzIFJveGVs
bCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgotLS0KCkknbSBub3QgY29udmluY2VkIHRoYXQg
dGhpcyBpcyB0aGUgY29ycmVjdCBwYXRjaCB0byBmaXggdGhpcyBpc3N1ZS4KSG93ZXZlciwgSSBj
YW4ndCBzZWUgd2h5IHdlIGRvICdhcm1wbXUtPnN0YXJ0KGFybXBtdSk7JyBvbmx5IGluICdjYXNl
CkNQVV9QTV9FTlRFUl9GQUlMRUQnIGFuZCB3aHkgd2Ugbm90IGNhbGwgZnVuY3Rpb24gY3B1X3Bt
X3BtdV9zZXR1cCgpCnRoZXJlIGFsc28sIHNpbmNlIGluIGNwdV9wbV9wbXVfc2V0dXAoKSBoYXMg
YSBjYXNlIHByZXBhcmVkIGZvcgpDUFVfUE1fRU5URVJfRkFJTEVELgoKIGRyaXZlcnMvcGVyZi9h
cm1fcG11LmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGVyZi9hcm1fcG11LmMgYi9kcml2ZXJzL3BlcmYvYXJtX3BtdS5jCmluZGV4
IDJkMDZiODA5NWExOS4uNDY1YTE1NzA1YmFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BlcmYvYXJt
X3BtdS5jCisrKyBiL2RyaXZlcnMvcGVyZi9hcm1fcG11LmMKQEAgLTcyNCw2ICs3MjQsNyBAQCBz
dGF0aWMgaW50IGNwdV9wbV9wbXVfbm90aWZ5KHN0cnVjdCBub3RpZmllcl9ibG9jayAqYiwgdW5z
aWduZWQgbG9uZyBjbWQsCiAJCWJyZWFrOwogCWNhc2UgQ1BVX1BNX0VYSVQ6CiAJCWNwdV9wbV9w
bXVfc2V0dXAoYXJtcG11LCBjbWQpOworCQkvKiBGYWxsIHRocm91Z2ggKi8KIAljYXNlIENQVV9Q
TV9FTlRFUl9GQUlMRUQ6CiAJCWFybXBtdS0+c3RhcnQoYXJtcG11KTsKIAkJYnJlYWs7Ci0tIAoy
LjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
