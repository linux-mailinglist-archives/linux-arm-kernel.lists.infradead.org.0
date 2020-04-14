Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631C21A8CD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hNlfHB0Cx1AQHgRXsDbRQ6AWAky5V2Fm2KqRh5xbZQ=; b=ryxwmiRzXaUnR2
	Hc3yZ7tdalJCE/dnY2sn+aiHuY2tsCS9Zh+HNCVoqMi/n8sDjaUki6LkeGrY/Q2H47UrQpxFEHfD8
	cMozMywqwgU4nV1RRqtottG4w+eJegYCUJqB8giTG4KJqh+drOTtgdghsRjwbRu/EfuBoiNH0gfVv
	nrLytjQdRtl8ccARHYYJGHAD/1tzZssNAG5j1HL1QTwZRmEGMk9dXIPHClYfjKqeMf3gcUdXjHuo8
	q3vxDI9ThvMdpICdvIusq7MFWshOEsdJaSlQPxA+nezmpJPK7/Mghvy3PEJARc3pm421i77s2rzrv
	HTZI/F0SpBtiAKdiJiTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSWE-00088K-KS; Tue, 14 Apr 2020 20:50:54 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOSW6-00087w-Vd
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 20:50:48 +0000
Received: by mail-lj1-x241.google.com with SMTP id y4so1322943ljn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 13:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4VidULW3sNFq1IBr5BVgYkJ2HzTTpcpxAz2X7BrAVHg=;
 b=uvtq2ztpgL632NvpxgxVdkS4VFpaqYP7UnlDWrRVWP0qyJK0JvIMXlY6JEF3csVS9x
 hWh5spAPEXlOZg6zDssOLfWPjeYofi72+ezWhkMdmzx1cJeFMzLN2qliVkSMAyC3piBw
 p8ArrIgjiFdvuoODf+PYy5CfebBerzULhSvEDdZX4KZjcP9XCWr9pj8sYqC6JfcC1aHe
 +Fnh0mHJzBMeShiR1HsagJ5HygkFgk2cSu+P12zPFIpxtz8HL+rRIz4hSAD/tXEbk0zb
 x1TULL6HArYkM8NaI8b9idGt/QP1kWh4p/pOr12j1lnctUXrrMSTeO5S++JLpyWD3GMx
 XpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4VidULW3sNFq1IBr5BVgYkJ2HzTTpcpxAz2X7BrAVHg=;
 b=DNGVTDGfnRN4rprgi+G/GNFvz0iCPNrMQh+td8hKYie5f65n68LhL6xl4KdSCZ+nEJ
 OuJ+sgXrnDnRV18XUafr0jS6WnirHv+lAohFw5RdgSa4nhjPs9nP/i2QTbDyuQ6C0wIe
 gIEDUqeaW6vNrakMWRab6GtfKTN8+bNrpVdWN/L8F9rY5wS7ER79qdreu7REkfO0IwfQ
 oCzQJioJNr6e/4gyb5af7hGl3qU9Z/1gsuXtgluzRbR04z8W/6Dy2xbXS2Zdx+E46lKo
 SDL12+OooJUjhgPWSeYtqujELQ81dxjVAG3TZBd8wd4lkj9EE8Fzs4jAtPEuOtf/eeOy
 s3Pw==
X-Gm-Message-State: AGi0Pub9m9+NBgSJbHSC8LkH57e+lPcChWurq5G15+EE5M4/j9pnqfJA
 C7ecCGf9pHXMka2+deINMLpECL53
X-Google-Smtp-Source: APiQypILAUnA0zAmCZatBH8tHsS3tV4vXCvYDhLfn2rH0mkq6ZK2azlTQdov/cLZ9PHX+LP6y8dz4A==
X-Received: by 2002:a2e:992:: with SMTP id 140mr1175625ljj.188.1586897444412; 
 Tue, 14 Apr 2020 13:50:44 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id i18sm5608207lfo.57.2020.04.14.13.50.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 13:50:43 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <a9afb1b5-3141-4923-c7fa-194228081e1b@gmail.com>
 <20200414145442.GJ3593749@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <37c5af25-c00b-cfe0-4c13-00ac5bdef82c@gmail.com>
Date: Tue, 14 Apr 2020 23:50:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414145442.GJ3593749@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_135047_017680_DF18BF1B 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTQuMDQuMjAyMCAxNzo1NCwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4+IEknZCBz
dWdnZXN0IHRvIGNoZWNrIGhvdyBtdWNoIHRpbWUgaW52b2NhdGlvbiBvZiBrdGltZV9nZXQoKSB0
YWtlcywgYXQKPj4gbGVhc3QgaXQgY2FtZSB0byBhIHN1cnByaXNlIHRvIG1lIGluIGEgY2FzZSBv
ZiB0aGUgdGVncmEtY3B1aWRsZSBkcml2ZXIuCj4+Cj4+IEl0IG1heSBiZSB3ZWxsIG92ZXIgdGhl
IGVtYy0+Y2xrY2hhbmdlX2RlbGF5Lgo+IAo+IEkgYXNzdW1lIHRoYXQgYXQgbGVhc3QgZWFjaCBp
bnZvY2F0aW9uIHdvdWxkIHRha2Ugcm91Z2hseSB0aGUgc2FtZQo+IGFtb3VudCBvZiB0aW1lPwoK
Tm90IHN1cmUuCgo+IFNpbmNlIHdlIG9ubHkgdXNlIHRoZSB2YWx1ZSB0byBjb21wdXRlIHRoZSB0
aW1lIHNpbmNlCj4gdGhlIGxhc3QgY2xvY2sgY2hhbmdlIHRoZSByZXN1bHQgc2hvdWxkIGFsd2F5
cyBiZSB2YWxpZC4gSW4gdGhlIHdvcnN0Cj4gY2FzZSBpZiBrdGltZV9nZXQoKSByZWFsbHkgdGFr
ZXMgdGhhdCBsb25nIHdlIG1heSBiZSB3YWl0aW5nIGxvbmdlcgo+IHRoYW4gd2UgbmVlZCB0bywg
YnV0IHRoYXQgd291bGRuJ3QgYmUgYWxsIHRoYXQgYmFkIGVpdGhlci4gQ2hhbmdpbmcKPiB0aGUg
RU1DIGNsb2NrIHJhdGUgaXNuJ3Qgc29tZXRoaW5nIHRoYXQgeW91IHdhbnQgdG8gZG8gYSBsb3Qu
CgpUaGVuIHByb2JhYmx5IHNob3VsZCBiZSBjbGVhbmVyIGFuZCBzaW1wbGVyIHRvIGhhdmUgYSBj
b25zdGFudCBkZWxheSBpbgp0aGUgY29kZT8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
