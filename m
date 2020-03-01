Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92790174B01
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 05:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJUA8NVHh42G0nLIsJM7BEFcFbEhr8bfsj6P7P+N7r8=; b=rw9lhFahu+NLW7
	aDbzXaavBeu2DtYXjmKdniWqq5kN1b697RhWXzOwek7Fyu04RK+ns+TWxmb1PUeeN0Z1vXEzje/OS
	hrVb96wFp0omNpKaZ37N+6Lk06QHNsZjDmh2gDUJGrjZZfh4OSpJkkjNPq5foAAN0QQGI7GvO6Hzs
	TqgP5YjBah9WBocmEMCDDWmyp6k0+gCdi/tdMJFNhkJdb3J3K3IdUTa4jM9/VaBosPanrq7RFwTR5
	skPeMkn+4ZJxrFhyd1kEr1VQ9Z099vCKBJnEpRnvgFAqG/raBvkFISeEl7Ov3diLm3Obr9hkZ7HLG
	SgLP0g0Gr9hkBMEfthPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8G1t-0000AV-Cw; Sun, 01 Mar 2020 04:16:37 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8G1j-00009T-KG; Sun, 01 Mar 2020 04:16:29 +0000
Received: by mail-lj1-x241.google.com with SMTP id o15so7970642ljg.6;
 Sat, 29 Feb 2020 20:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=aUNhSk4XiLO4JVswFHsb4th4Idff4PdkPgnCTD0hgkI=;
 b=I1JTMEkxzMBH3C/Ciby3PlqiyiMfD/nJ/o2wOAOjQvw2YH9yrAJ58t0Sapyndq6MYx
 Qi0CD5xSzKT4bfeJZOLQqUkdWCJFDpLm6ZXdRGbwdSdJkWWsTIymgvYul03/pqr6GWYh
 chzhBcioJY7OX1mg6jQd49fDNYa4VElpccDAV//P0NsoeF0jdioT6K8nHPMb0bq//jtb
 wyUUU2txXE3y8W+Y9jI1HuGTgaWpjnNsuSl1KFHa1PRqzeqocnWSYa+gKIMkKh16m4ua
 KQJxWxT2D1FsaccJV/gBTDLu+Rhi4+vkaSnc4u3vkPYB5Grz/tqwmoAZAEr4wF86eYeh
 hg1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=aUNhSk4XiLO4JVswFHsb4th4Idff4PdkPgnCTD0hgkI=;
 b=IimzL0GuEZkOQiQ4ygKfYPTL5Z0Zw6nHxHOpi6UzuYVEAfgYSNyXPUd8SSC4igmVeX
 21QzjAOFa3J2TPgXgV1nM9J+bX3cH7LbUQnWkE4CttzOcFq77vdwREy+EBif7diqnm0g
 vtxXFcILxJsaf+xe5oid9ccqCviI2FHpfOlI8UFgFMYjY+BcqF9sH5xQe65PvJIYdGmJ
 EIClNXReVyo1abjf2gFeIZyljqeaptkU/BuasR7PlO6Z2aMk7mLGnMAGAQ8/GAUQYyqN
 g6ow7PnqccuHI3uP1YypvGVeQ9OAJvx0h9zkGhXlTTC/eSNCaNbwhoRWZhCcQGRBCAOd
 q4Pw==
X-Gm-Message-State: ANhLgQ0jng/UMs6BjiZirSvoW+M+S37fZmhg5McZBFzm8+pltgxnjJtp
 hANfXrdtcFjc3tJZt3K2sGw=
X-Google-Smtp-Source: ADFU+vuuiIbd/U+4zor59WByPUmKyTFfOsyde0g80YyZBbZZu0GA7x4k09I06Z7MX6R1gKrjKP0Pag==
X-Received: by 2002:a2e:b895:: with SMTP id r21mr7293919ljp.126.1583036185172; 
 Sat, 29 Feb 2020 20:16:25 -0800 (PST)
Received: from [172.16.20.20] ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id a17sm1118378ljk.42.2020.02.29.20.16.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Feb 2020 20:16:24 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v5 3/3] arm64: dts: meson: add support for the SmartLabs
 SML-5442TW
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <1jpndxgxqi.fsf@starbuckisacylon.baylibre.com>
Date: Sun, 1 Mar 2020 08:16:20 +0400
Message-Id: <7E2FA81A-9A24-433D-A674-C0C224FCB2DE@gmail.com>
References: <1582979124-82363-1-git-send-email-christianshewitt@gmail.com>
 <1582979124-82363-4-git-send-email-christianshewitt@gmail.com>
 <1jpndxgxqi.fsf@starbuckisacylon.baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_201627_694584_AA1049B2 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 =?utf-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gMjkgRmViIDIwMjAsIGF0IDg6MzIgcG0sIEplcm9tZSBCcnVuZXQgPGpicnVuZXRAYmF5
bGlicmUuY29tPiB3cm90ZToKCltzbmlwXQoKPiBUaGUgYWJvdmUgZG9lcyBub3QgY29tcGlsZSBh
Z2FpbnN0IGtldmluJ3MgdHJlZToKPiAxIyB0aGUgYXVkaW8gZHQgZGV2aWNlIGhhdmUgbm90IGJl
ZW4gYWRkZWQgeWV0Cj4gMiMgdGhlIGJpbmRpbmdzIGRlcHMgb2YgMyBkaWZmZXJlbnQgc3Vic3lz
dGVtIHdpbGwgYmUgYXZhaWxhYmxlIGluIHRoaXMKPiB0cmVlIHdpdGggdGhlIG5leHQgcmMxCj4g
Cj4gSSB3YXJuZWQgYWJvdXQgdGhpcyBvbiBJUkMuCgpTb3JyeS4uIEkgc2F3IG5vdGljZXMgb24g
dGhlIG1haWxpbmcgbGlzdCB0aGF0IE1hcmsgQnJvd24gaGFkIGFwcGxpZWQgCmNoYW5nZXMgYW5k
IGFzc3VtZWQgdGhpcyBtZWFudCB0aGF0IGF1ZGlvIHRoaW5ncyB3b3VsZCBiZSBhdmFpbGFibGUK
Zm9yIHVzZS4gSeKAmWxsIHJlc3VibWl0IGEgdjYgc2VyaWVzIHdpdGhvdXQgdGhlIGF1ZGlvIG5v
ZGVzIGFuZCB3YWl0IGZvcgp0aGUgYXVkaW8gY2hhbmdlcyB0byBwZXJjb2xhdGUgdGhyb3VnaC4K
CkNocmlzdGlhbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
