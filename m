Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FCC1AFAFD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 15:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7Mhdrgzk9QlQxdGwwOOV+f54xsKKJaPo5xR8khRmC4=; b=jPtlIFsqWgmCzs
	Jrm+9MTfVSdp71/1DIxRLw97SN0DtFJeqDrHPqrinabw7PPM2HhW6o0jvvN8wN5kSYpksV9vbwNwx
	JITXommEYFNrNJik1yv/3ZWRmdgvTr8lVhibbnlJ90YWp8POfUZ4fNB5KosW3zS2KwcnhY+9/CMVb
	Jv+ktEPDgUKdPrXDftxxmNhGUIyCECvr1r74pJHgvz2yNxVoOlEzHA6LJVjTxD5DqrZW3Mw5RLMmh
	+ONE3hJxtXpRS3qNMKgjsXmYuls85xg9eroKacgfQXmEOMXqd73cFmpqoC6A65/DR2iE6FmFJxytk
	nk9tNKO516swZLBYzxHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQAMa-0001ZC-4e; Sun, 19 Apr 2020 13:52:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQAKy-0000LC-S7
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 13:50:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id k1so8720228wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 06:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gUA++TEaLcF7xVYj2JPvsFYTdSQV3W9a05Rr324UlUQ=;
 b=SCeb+46yipxDv9/COJNIXXpa+me9KDQFXu00J1jjuKCGGpCVt1m97bcM7RaiJ8N++8
 Y+zQNPzqx/yNW5Acurrihk+8H0Sc73dcl/A+GjYpicbG26xu32HtLccq1HlSvsaH27JR
 jMME7DgK5vip9DRXcp/nEzNrZI60Uylg/5IMKT8vcraiLscku5UiMia8NUqAp0GeTulI
 /91iigbZF2EfhTZPBw/zD8wk5OUUkCddz4tRhNvZXi9gaWHCRTK5oA6j0jLrBsSGZDo6
 0f/T6ITi54DGdezprlXKW2us6r5P/Fxr0CGpH/IFJchMxAbZw+IRVK2rSK4tyFn0psz/
 TDdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gUA++TEaLcF7xVYj2JPvsFYTdSQV3W9a05Rr324UlUQ=;
 b=GgGq44QUwEIL+VB94/qsuk3MjiCkloeZBqAkuVlX0YflLUjY7a7PH5coa/N7EyX4Pa
 eHV4Nj5QJoXoM4rmeLmUIOhyIOaRik8QY/SrepECVLzlm9IHg67SzNzqONKkId6Sv5Om
 q6ytgEVEyUmhsJ2mKE0W7Ht0ZHk4MW2j6oBe6RSOZn6uUx8q267Z5yGxyN8xbQNFk5ob
 bXtqnCe4FYZNc85H0/o/MTIEn7A5KgU/9pc6juCxfw1qFDAvBiabdhl74iwUZGoy8khR
 6G2ngOu0/qO27mx6kBpdidJnexq8C9DkO6V/+8B9/lZMyhIH3uHjhDUjZQMnwaxBQmdq
 Ca+Q==
X-Gm-Message-State: AGi0PubL0ddSssIf53BGCALFzYaCFSf0/LDo0DhTXLoOU9Uc5ByEh9MS
 MsXGn4yqe8Oxq9RECP04s28=
X-Google-Smtp-Source: APiQypKADQ9qdgOD90LPt+LaY4fb76W1CUcU3g33XUbM9Z+8ph5ypgbAag07BSBplDly1t8bR8ST9A==
X-Received: by 2002:a5d:474b:: with SMTP id o11mr13130557wrs.4.1587304219433; 
 Sun, 19 Apr 2020 06:50:19 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 z8sm20183940wrr.40.2020.04.19.06.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 06:50:18 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 5/7] arm64: dts: allwinner: h6: Enable CPU opp tables for
 Tanix TX6
Date: Sun, 19 Apr 2020 15:50:09 +0200
Message-Id: <20200419135011.18010-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419135011.18010-1-peron.clem@gmail.com>
References: <20200419135011.18010-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_065020_960976_07C58EA5 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBUYW5peCBUWDYuCgpBbHNvIGFkZCB0aGUgZml4ZWQg
cmVndWxhdG9yIHRoYXQgcHJvdmlkZWQgdmRkLWNwdS1ncHUgcmVxdWlyZWQgZm9yCkNQVSBvcHAg
dGFibGVzLgoKVGhpcyB2b2x0YWdlIGhhcyBiZWVuIGZvdW5kIHVzaW5nIGEgdm9sdG1ldGVyIGFu
ZCBjb3VsZCBiZSB3cm9uZy4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24u
Y2xlbUBnbWFpbC5jb20+Ci0tLQogLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFu
aXgtdHg2LmR0cyAgICAgIHwgMTMgKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYtdGFuaXgtdHg2LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi10YW5peC10eDYuZHRzCmluZGV4IDgzZTZjYjBlNTljZS4uYmU4MTMzMGRiMTRmIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgt
dHg2LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFu
aXgtdHg2LmR0cwpAQCAtNCw2ICs0LDcgQEAKIC9kdHMtdjEvOwogCiAjaW5jbHVkZSAic3VuNTBp
LWg2LmR0c2kiCisjaW5jbHVkZSAic3VuNTBpLWg2LWNwdS1vcHAuZHRzaSIKIAogI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgogCkBAIC0zNyw2ICszOCwxNyBAQAogCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8MzMwMDAwMD47CiAJfTsKKworCXJlZ192ZGRfY3B1X2dwdTogdmRkLWNwdS1ncHUgeworCQlj
b21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CisJCXJlZ3VsYXRvci1uYW1lID0gInZkZC1j
cHUtZ3B1IjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTEzNTAwMD47CisJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDExMzUwMDA+OworCX07Cit9OworCismY3B1MCB7CisJY3B1
LXN1cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1PjsKIH07CiAKICZkZSB7CkBAIC01Niw2ICs2OCw3
IEBACiB9OwogCiAmZ3B1IHsKKwltYWxpLXN1cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1PjsKIAlz
dGF0dXMgPSAib2theSI7CiB9OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
