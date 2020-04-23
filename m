Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3401B62BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 19:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjyMCmleWqs4W815AGvhNSQGR/exLBxOxJbGWomi0m4=; b=A20OGyGoinFKfz
	l0KHs2VEoFWgH7tKELj0WdDgNRX7ElRNq0ED6JIhlzW2rEH5nas1rBne8OaTId63HPTp8Lc5uEipP
	1bUzACBieHwjt9PE9Qpi0NIFRA1XwtHFtcREx0H6wRcYYyLyd3rsaW0gDSGtujP0uyDSLK9ED6rR0
	MnOKPpLPYuwMOosdf14oPoFaC/bZ/SBgiJaTMSUIuj1mDhK1aNRhK7yKtnZJM9Z9/03tzNm2+OT9K
	YLxegy6eVD0s+/bTYvuonE1+31mjhGNiUOwWzSp0q6TvTBk6Jl1Wkf5MmU5kJw8/cS3Gw71/XNmp1
	P7ohXvPLx7GCBYJbjUgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRg1Z-0000kW-3C; Thu, 23 Apr 2020 17:52:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRfwq-0002wC-5q
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 17:47:41 +0000
Received: by mail-wm1-x344.google.com with SMTP id 188so7343422wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 10:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s7IbTs24rsRNhpZKr45UIa67diIJ2j3hIHeW1sPPTHg=;
 b=rT7iEze1HALDl6lvpSUzL8kQ9itum3Z2XzfNcB2XoIEDVCBM/j6/M7zr6uN213LHUZ
 YPYTt0ivYzYSF6YneI4BMvUwFVX7iEc9dxIja6Z4QObAUcaSpzyxGXz6vc7hl2fzkrQD
 R9BSc6JnDVw/7JsvxiMy0WjdfVS++akr/2p7eA02ylWNjpXat6zFTDhrZ2kGyVS30m0C
 fn1diPgUwWhu9n+CSUoJBhA40Gv7vM4IZZHJOL6B4l6qmbvTXyfW0+MsY2+3J+lPRkTp
 +ENdEpaKAoskWaicO76h7c0+S+IfLzGYHPCpE0GR798uEQawjTlUTuSuk1smrO08DO73
 Ss0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s7IbTs24rsRNhpZKr45UIa67diIJ2j3hIHeW1sPPTHg=;
 b=Pz5MD0etGvknpx1z5c5Zn2Qxl6F3nRwm4+bT443lsb9u6snAIs42RRqjjG8To5IxxX
 sH8ZOZ2885ZtM90zBeEWtN2l7V7dWxfNb+BoujZOgc33xsLMcKUXo1UBIDC8g6CUvs4C
 y7yusIOiw7UClcH++3cz7gXY/LHGW5uSFGXf2y23nzuc6lc8zYDsfcxtyAb0qYhIVKvD
 v98fEWDKRkMSRyl2i4+aju5dM5EngLvUUHWCZ2ZdbvKe45ywx6+BpZza9eg1B5fAZsju
 uONe6o73QBaQGL1TDjZf+shWU9QGzuMjJiRszRxszst7tadWyBrXyDKP1M9KHJKIXZiC
 tk0Q==
X-Gm-Message-State: AGi0PubXYFSNpRH8QUYkhSsRIMnyQMsZ8eBnhn/OvTRoTBDsMEbPSzMX
 6Fg8dWzPQZGEQ6+DFtrbI4Y=
X-Google-Smtp-Source: APiQypJw5ok5IF/3P0V2C6qsbqky8PzsWdgQGR5qKWG2iHmneXc96Vsz7zLQC9ZR9/+p6Grpp62Rng==
X-Received: by 2002:a1c:b70a:: with SMTP id h10mr5429318wmf.172.1587664058540; 
 Thu, 23 Apr 2020 10:47:38 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id x18sm4631951wmi.29.2020.04.23.10.47.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 10:47:37 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH v2 2/2] media: cedrus: Implement runtime PM
Date: Thu, 23 Apr 2020 19:47:36 +0200
Message-ID: <3048039.44csPzL39Z@jernej-laptop>
In-Reply-To: <20200422040410.6251-2-samuel@sholland.org>
References: <20200422040410.6251-1-samuel@sholland.org>
 <20200422040410.6251-2-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_104740_337395_22BC0FA2 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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
 provider [jernej.skrabec[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-sunxi@googlegroups.com, samuel@sholland.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNyZWRhLCAyMi4gYXByaWwgMjAyMCBvYiAwNjowNDoxMCBDRVNUIGplIFNhbXVlbCBIb2xs
YW5kIG5hcGlzYWwoYSk6Cj4gVGhpcyBhbGxvd3MgdGhlIFZFIGNsb2NrcyBhbmQgUExMX1ZFIHRv
IGJlIGRpc2FibGVkIG1vc3Qgb2YgdGhlIHRpbWUuCj4gQSBydW50aW1lIFBNIHJlZmVyZW5jZSBp
cyBoZWxkIHdoaWxlIHN0cmVhbWluZy4KPiAKPiBPcmlnaW5hbGx5LWJ5OiBKZXJuZWogxaBrcmFi
ZWMgPGplcm5lai5za3JhYmVjQGdtYWlsLmNvbT4KCkkgZ3Vlc3MgdGhpcyBjb3VsZCBiZSBTT0I/
IEVpdGhlciB3YXkgSSdtIGZpbmUuCgo+IFNpZ25lZC1vZmYtYnk6IFNhbXVlbCBIb2xsYW5kIDxz
YW11ZWxAc2hvbGxhbmQub3JnPgo+IC0tLQo+IAo+IHYyOiBtb3ZlZCBQTSByZWZlcmVuY2UgdG8g
Y2VkcnVzX3tzdGFydCxzdG9wfV9zdHJlYW1pbmcsIGJhc2VkIG9uIGFuCj4gICAgIGVhcmxpZXIg
cGF0Y2ggYnkgSmVybmVqIFNrcmFiZWMuIFJlbW92ZXMgdGhlIG5lZWQgZm9yIGF1dG9zdXNwZW5k
Lgo+ICAgICBJIHRlc3RlZCB0aGlzIHdpdGggcnVubmluZyAyeCB2NGwyLXJlcXVlc3QtdGVzdCBp
biBwYXJhbGxlbC4KPiAKCkkgdGVzdGVkIHByZXZpb3VzIGFuZCB0aGlzIHBhdGNoIHdpdGggTGli
cmVFTEVDIGFuZCBJIGRpZG4ndCBub3RpY2VkIGFueSAKcmVncmVzc2lvbnM6CgpUZXN0ZWQtYnk6
IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KCkJlc3QgcmVnYXJkcywK
SmVybmVqCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
