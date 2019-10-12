Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E437D5033
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 15:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VBUlzJ33tbQ9c5ZRHml5wrhrQaN91aW5+KZRYXq+kXw=; b=tg0TeprQQgMdoz
	BxOXKg+Ha/egKLFm8nWoP3iVdKLb4hQHz1KQRoj3GB/sK7GOQnihCmkoRMI5d0u5neIidaH1ZyJKa
	iWxTSzQnuVD0F/q4dDP895koyb76ZF5+KLdQ+FUx3p1iJIGu0o+WJsPEanlU8SNabiQEg3ataQqgP
	paXlb7a6KyvCaS3If/grt+C+NgcUrmMmBEwZlBiE859KBlhLb1gjg5c4N2QtazoFeRh2d8+/M6sD6
	2Yjgxs5dL8r6lGdYVqddJDvaexLswcdnd0K0esK6/UP1vthFamwLHQ7ByZCQVV9zAwVf27S9tqvts
	HAuhURl6HDDjl8TYTwUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJHsX-0003SP-IQ; Sat, 12 Oct 2019 13:56:17 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJHsJ-0003RZ-1z; Sat, 12 Oct 2019 13:56:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570888555;
 bh=YdsuZrSP+jJJMluIACwENlwHKGfUwYpdRS9znBsqOH8=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=UerOCV7unbMXupz5/JZ7ZHjLBGOSySWDAstzIbEciWvdUk45/iifgUfy2VQizQiUN
 VSifMEWLXQnOoFpVv3rtGt35qOdYI4T9gb/rXn5Y5dkNhR/ZyyV7ps1ewXq9pPIgFm
 cWmjB4R1F4CIiob1+5FmhSesFt0CP4T9VjP8TMhQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.155.250]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lsy7e-1hvSLo3MNO-012bFA; Sat, 12
 Oct 2019 15:55:54 +0200
To: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
Date: Sat, 12 Oct 2019 15:55:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:lfuKZ77lF7iOIkLERuu8Fipch5A0vXrXLcCnxR+nhPRJzXd1O5n
 LxtG8xETpSQLuwurZpMMSk18/YBSZFblP0REDBZ1L8B8W+J1enbIClSuRXZM2U636EPlAdU
 S3YQIZEHCfo17jED1mBt9bw8l4iqtJbPm5M/y1b/ZwljtvrU9fXxrTkWfVmPiKECb279KRI
 4ooFcnZez1ZBL+Ob666AQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pQ0RpfS4Wdw=:uaTSn9e6mWPRfwImIcKNNn
 gbKBjD+IcCl0LnR+GI7YbPxI9NHXx2bC3TJZBIOoyS5GzmoBlMO//dYkNo2uLZXnUjH200Jpt
 8zERy+C+52/xfGQ3X4d4fNqX5ajvNqqsg2K+C5hzZucy1Nev3vKwFOszsefvn0NPqvwqmpDTX
 Rx1BfUG0cWG+8phexbs2k79CrpUXXsONZ2BVo/EMlto3a4ShKDN+XCCGbg7sViK9yXbF0L8dI
 149SfMdzlDEOHol+dP9+Mybwzb7zghMlvp5uM7bOaOds0NpXcvgKJkU4ZpX45qZg9+bNTRXMV
 eaJXLuO3y3BWuWPVcoVQOPfL7ofA/WkioRgI7FAQMVDmgjhgx6Ca3oJVAZtxizEWL3jFYxoY+
 XSRx+41uAh7MWnRcmSLrn1vcPuC4jZDYpr2OPMt5Lpbk8YNkLlAqCbPvM/P/A3GRmlG3wT31I
 fFIWjRJkQlq7BOgEsXEtiutjoS7l1z4pIz9w0bP9VmdzRseH8X9bBecWfTnJ8cTwKrvPqixHr
 UMwf7NxUmPxqlrW3m20aU6iLz7S4iDm+gvU2ODtQ8hAoRj5izjE5yqVOrGobrbYJ9ihoQlvYB
 SV6Eqys8nJJ/Hp5E45wco1FZd6ag3U47owsGUgw2OtvC6et+X2vGy8o4z6daIxLvviQE4PVxB
 1i0vRfAjrBDKGQu7U4g4tT5eMoK9b+qKSVW+gw8nu9byLJ1zS3ylLB9Pj5U8f8YCmeSACyGGO
 aJQ+J88lB0Ds325YCHmASepaOrdrZ49Y2knScabV8LxY+TBYPSoTASpTeaQxKFCpu3aVOBcVW
 vnkDZh57/z6H3MBE/B4oNwRbtzg0cd0guB1KjdEx2zKI5Kf4iwr6apo+tuor6n/swAmhY1Mtc
 wZFz1xYsLwM69g89dS48Ovy1CK6xDuBBr/uUDVNlV3LDqYL2DtY4R0wUF1zDym3PAB5PmyRrC
 HKadU2KCVlpaSklYdrTdRKKt2tHNAyir0sX5e046sSwVIZFbijkerbEOf641xVdjijCbW1VAY
 AouQ4cZ5de/BHvsRfVPQ/JN1IE5dPXFNJO0OiFm/gZ/1U6zvm9LyUaz6j2oWpG1gl3WPPPgjB
 Y2c4halA+RbF8KESIRFoRe0+8bzeWI8RqCVbHw95cw4HHF4N7SQrUCq0/E8VzmdCSKhe7S78V
 Ci0ZHZ3WHYbXhNmEHwAC/fyEVigjVGvbpI1HqlS0XMM7Xby6upoc1+wk7xlFsuPQ3ugnAdNyB
 zZhdSqycu8dIa4Ue408mD2tIttdm7Uai71Zpu9lZyiU4MRA4VQ9KwZ0pM4Vs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_065603_432645_7B454079 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, Aditya Pakki <pakki001@umn.edu>,
 Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>,
 Navid Emamdoost <emamd001@umn.edu>, Stephen McCamant <smccaman@umn.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpJIHRyaWVkIGFub3RoZXIgc2NyaXB0IGZvciB0aGUgc2VtYW50aWMgcGF0Y2ggbGFu
Z3VhZ2Ugb3V0LgpUaGlzIHNvdXJjZSBjb2RlIGFuYWx5c2lzIGFwcHJvYWNoIHBvaW50cyBvdXQg
dGhhdCB0aGUgaW1wbGVtZW50YXRpb24Kb2YgdGhlIGZ1bmN0aW9uIOKAnHJvY2tjaGlwX2Nsa19y
ZWdpc3Rlcl9wbGzigJ0gY29udGFpbnMgYWxzbyBhIGNhbGwKb2YgdGhlIGZ1bmN0aW9uIOKAnGtt
ZW1kdXDigJ0uCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1wbGwuYz9p
ZD0xYzBjYzVmMWFlNWVlNWE2OTEzNzA0YzBkNzVhNmU5OTYwNGVlMzBhI245MTMKaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuNC1yYzIvc291cmNlL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1wbGwuYyNMOTEzCgoqIERvIHlvdSBmaW5kIHRoZSB1c2FnZSBvZiB0aGUgZm9ybWF0
IHN0cmluZyDigJwlczogY291bGQgbm90IGFsbG9jYXRlCiAgcmF0ZSB0YWJsZSBmb3IgJXNcbuKA
nSBzdGlsbCBhcHByb3ByaWF0ZSBhdCB0aGlzIHBsYWNlPwoKKiBJcyB0aGVyZSBhIG5lZWQgdG8g
YWRqdXN0IHRoZSBlcnJvciBoYW5kbGluZyBoZXJlPwoKUmVnYXJkcywKTWFya3VzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
