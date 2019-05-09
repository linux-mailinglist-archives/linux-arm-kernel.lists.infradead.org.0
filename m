Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBC4187D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 11:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zS3pkkYNJz5NBmPt6dty2bWmaN9mvguhGTSRLsh/EVo=; b=ogLk+H2q7acdPn
	FlUKglVqMLEwlcKf15Jb/Szhy+gYeAVYHBcnPnjpr/02i1jiGyxjTgyv+Ava2fj3477hRY0/kaa5l
	th2DNVYD78pbfN0tohK+pYqGIbBAk0kC2SE/IzdIZV9wAYyT2h5WwQaEOttjQqRnlwIbbAt4nUqsU
	s6quVLYtN35CKJaAvHpoDwgHbfDb1W90AIuz8OCLnTJda1c3jkDtpJjNKIed4AZatsnnt1yy6uEd7
	7lBxAOUEtuhIiSK2X7443olVx4MiUcYnJlAy7rtbO9AZ/rRWR6rmtb9+6/c+NnZHRWOU6adnRrMUI
	LUDAkR/qCWfyjexbIyew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfRO-0007W6-MB; Thu, 09 May 2019 09:34:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfQv-0007Ab-JX
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 09:33:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id w12so2058198wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 02:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=o7y1Eq5XE68bwd6aXqoeahdc2GOPTkNRx2HYwO3zXRM=;
 b=MGyl/NoSKew0c+r/VW5jKj8+RY1Be0lr7+iIyBpWo2JyYY2+4Zj0KIOT5UyS2IH7p6
 Xl8Db2PnGHM3+pD5QLCTzzpzGSmEtTFTZ6XOaQOj2ECmn0uQBKyeIxF4HZBVzRqUiJI2
 NEDAmdlp9PxYJcXxwi7whT1QkFYbEdWMx6tV43o4yLEvaQyl/FMlzPKNIZr4j26kLmou
 amPYy2ATk+pcA9Lju+4267nyRZtaBxE1pCly3geHfLV8Bl8qMtI3tyJAkYKyWCIXlAY2
 nu6Mdw5YSWjgkIa1xZ/wflstOgUkvca0cuPgMnpdZ+lPpSfs8EDVYQWEFaBKZ397A7hp
 Bz7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=o7y1Eq5XE68bwd6aXqoeahdc2GOPTkNRx2HYwO3zXRM=;
 b=hjvc9U+hNIzZ5/h8CkmxuYsJlBIL5KJ9YJDQ6MerZ0q0V67+djyTIjDuaYOOnsJ8gp
 nmPD5tGBHTDdORubhojCdfEpM7Q7D6UQkbzhq0hAL0cGPnb0o8DkzK1u39eFbWt4Sw6T
 RH/fviXJiFHNC5rW5/IMK83XXGb5pLC1529gbkWCbD+BpUEPjld+DY7EGWZAlfiX+y3i
 mT7ctGa4JOyz9g6YarOfFZchCnEg1FQe/b+qlXJkmorJWQiuVP5LselPjDywcQppnyjR
 jTT5gmahToFLQgQoJaYuuxTJr0f29Au+QVWF89RqX3ssjcJ+ZfQ5qrxQaB8hwPEtybNX
 tyxQ==
X-Gm-Message-State: APjAAAV/P0JEsHtx2/HtKWrrVqqOZ7xMdA+L5dYi3C2Y+1S+SHw4hRa8
 R3VB51VkqC/8jxtjpNVO3TB0cg==
X-Google-Smtp-Source: APXvYqyaoHx3f0sqPQbDtBs8Z9JyejUps85iOp6Wh0y/gQuPQM64c/u7mmfNhXTMA9EEM9TWbH/fpA==
X-Received: by 2002:adf:ec51:: with SMTP id w17mr2358350wrn.326.1557394423897; 
 Thu, 09 May 2019 02:33:43 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id u8sm1141266wmc.14.2019.05.09.02.33.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 02:33:43 -0700 (PDT)
Date: Thu, 9 May 2019 10:33:38 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH v6 2/9] mfd: Add ST Multi-Function eXpander (STMFX) core
 driver
Message-ID: <20190509093338.GW31645@dell>
References: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
 <1557392336-28239-3-git-send-email-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557392336-28239-3-git-send-email-amelie.delaunay@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_023345_942555_EB0978E6 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwOSBNYXkgMjAxOSwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgoKPiBTVE1pY3JvZWxl
Y3Ryb25pY3MgTXVsdGktRnVuY3Rpb24gZVhwYW5kZXIgKFNUTUZYKSBpcyBhIHNsYXZlIGNvbnRy
b2xsZXIKPiB1c2luZyBJMkMgZm9yIGNvbW11bmljYXRpb24gd2l0aCB0aGUgbWFpbiBNQ1UuIE1h
aW4gZmVhdHVyZXMgYXJlOgo+IC0gMTYgZmFzdCBHUElPcyBpbmRpdmlkdWFsbHkgY29uZmlndXJh
YmxlIGluIGlucHV0L291dHB1dAo+IC0gOCBhbHRlcm5hdGUgR1BJT3MgaW5kaXZpZHVhbGx5IGNv
bmZpZ3VyYWJsZSBpbiBpbnB1dC9vdXRwdXQgd2hlbiBvdGhlcgo+IFNUTUZYIGZ1bmN0aW9ucyBh
cmUgbm90IHVzZWQKPiAtIE1haW4gTUNVIElERCBtZWFzdXJlbWVudAo+IC0gUmVzaXN0aXZlIHRv
dWNoc2NyZWVuIGNvbnRyb2xsZXIKPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbWVsaWUgRGVsYXVuYXkg
PGFtZWxpZS5kZWxhdW5heUBzdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAg
ICAgfCAgMTMgKysKPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICB8ICAgMiArLQo+ICBkcml2
ZXJzL21mZC9zdG1meC5jICAgICAgIHwgNTQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9tZmQvc3RtZnguaCB8IDEyMyArKysr
KysrKysrKwo+ICA0IGZpbGVzIGNoYW5nZWQsIDY4MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9zdG1meC5jCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9zdG1meC5oCgpBcHBsaWVkLCB0aGFua3MuCgot
LSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExp
bmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
