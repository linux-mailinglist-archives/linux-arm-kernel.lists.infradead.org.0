Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCEB1B2B34
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 17:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZHjKQ7NYefCb4eDOo5aflwoxg0St7KF053rMlB39K8=; b=oV8tTyeqpiH+2g
	lQGY0DF0mt8SsbBW8QZ+SXgIBg+wWNXgng8qk2iXAjM33HvJ/VVhLleF6NtL0qdlEmGE+UwK3Oksv
	Dj5cqoYUX+lT1P/tQbxjLCQsCyWP3gcuP+gJKsbg8H7iyrjf6tegYEeoZqehSA5H2mngdzfh7zVUZ
	oEIBsQrpC+iN+PMZ7tATq5x/6Wklw+MISzM1Ek6ArmU+i+kWYPghPmRHQfP5le8gbObfU4Y1dUP3z
	qey3O2baP6f/TfUCRp0I+YfcROieLTl2emEQgtjYOyqqWHtC9L1cvYqEtMVE5oXxQ5hSRTGTrptrZ
	iMTfm9tW7SWPwkl3R79Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQus9-0008J5-4H; Tue, 21 Apr 2020 15:31:41 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQus0-0008IQ-II
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 15:31:33 +0000
Received: by mail-lj1-x243.google.com with SMTP id n6so11067834ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 08:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wtUCUiYZffBnrc+hszmiZBVbrcWDpLsAMtA40Limz8k=;
 b=cnEk74tXOooz70SpqP7DT3KV7T9QZmQbO4RFs8pWicqYrphIYWhuRBA1JeQDVa8iAj
 tCuG7RzMweHretX84CxyA53xPl0w1WqVpa4zSF67dXQ0IHa8gYb24N/QNkMeIJGm66wG
 wrWroxjqbaDcpMybh9TJnAzRGaBqj4LaiSK3owx+xke2lDCit/D7XWzy8fLFHnxjVfRh
 TvWrl9W476OczqA56ben2Zk7X6C7sq/RDZggBAiMWsmbziYUmy8JlYMq/i14gMm5nP29
 6W62YGfkY/PGWUQsVLEvm4N+s2xpN02ocYEL/av1G/YIF8pNrJaLaQ8tvpVx0mWrQNCg
 rm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wtUCUiYZffBnrc+hszmiZBVbrcWDpLsAMtA40Limz8k=;
 b=mwG3Fz5W0+Z/squfu7WbvaEoFsw0bVPnsWya9eNN/ISyIIEJDkoXDWCwbRAD0iMPpM
 4SmYTUZHXdYKTUwLECDrjPrPXaP9aCY0KoMXLL1vl+KyVTOQ8og0jfWl2LDRkbMOZ6Wx
 +8ZhGkq6CS+KX4jh7ui27zAh+0agzI/AcmLu1PJdyK8zov2P4cWzDJMQZM/MUVIrtxNx
 FYT5Mu3oG2F/upzFKhO/lFbkC+E1DP44JjD6Q/a68g5c2voAR6P7+Md4kpNwJURsKaC6
 lA4LGIBJQQG/cluzLyqW35z1sxJb+EcjQjo5WL3JdybYsdmt4OR0uLOGiY3feLkRQuTC
 qzyQ==
X-Gm-Message-State: AGi0PubjfZYfkMG6H79Xh8N6VNzuKVfywS8WIiCeEIiHVIneICkjKTs8
 qD0CbFSqJ1O2IkAT33GrjFI=
X-Google-Smtp-Source: APiQypIv0yCfzacWSwYjpZnJL0NsfUjoXNHzP9kQruZGSH1JvuatBTBYOvzzT7arz2q0DKwR7Uzx0w==
X-Received: by 2002:a2e:910e:: with SMTP id m14mr5092458ljg.141.1587483090376; 
 Tue, 21 Apr 2020 08:31:30 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id z15sm2342483ljk.99.2020.04.21.08.31.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 08:31:29 -0700 (PDT)
Subject: Re: [PATCH v5] ARM: boot: Obtain start of physical memory from DTB
To: Ard Biesheuvel <ardb@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
References: <20200415153409.30112-1-geert+renesas@glider.be>
 <CAMj1kXHm=xA4gafwAaBn8=YcAsQCYDNmZ=4REsfvEUgZShm3Ww@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <5419f6b6-2d75-763f-abe1-4c6a2c67dc3d@gmail.com>
Date: Tue, 21 Apr 2020 18:31:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXHm=xA4gafwAaBn8=YcAsQCYDNmZ=4REsfvEUgZShm3Ww@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_083132_628347_0D16AB83 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjEuMDQuMjAyMCAxODoxOSwgQXJkIEJpZXNoZXV2ZWwg0L/QuNGI0LXRgjoKPiBPbiBXZWQsIDE1
IEFwciAyMDIwIGF0IDE3OjM0LCBHZWVydCBVeXR0ZXJob2V2ZW4KPiA8Z2VlcnQrcmVuZXNhc0Bn
bGlkZXIuYmU+IHdyb3RlOgo+Pgo+PiBDdXJyZW50bHksIHRoZSBzdGFydCBhZGRyZXNzIG9mIHBo
eXNpY2FsIG1lbW9yeSBpcyBvYnRhaW5lZCBieSBtYXNraW5nCj4+IHRoZSBwcm9ncmFtIGNvdW50
ZXIgd2l0aCBhIGZpeGVkIG1hc2sgb2YgMHhmODAwMDAwMC4gIFRoaXMgbWFzayB2YWx1ZQo+PiB3
YXMgY2hvc2VuIGFzIGEgYmFsYW5jZSBiZXR3ZWVuIHRoZSByZXF1aXJlbWVudHMgb2YgZGlmZmVy
ZW50IHBsYXRmb3Jtcy4KPj4gSG93ZXZlciwgdGhpcyBkb2VzIHJlcXVpcmUgdGhhdCB0aGUgc3Rh
cnQgYWRkcmVzcyBvZiBwaHlzaWNhbCBtZW1vcnkgaXMKPj4gYSBtdWx0aXBsZSBvZiAxMjggTWlC
LCBwcmVjbHVkaW5nIGJvb3RpbmcgTGludXggb24gcGxhdGZvcm1zIHdoZXJlIHRoaXMKPj4gcmVx
dWlyZW1lbnQgaXMgbm90IGZ1bGZpbGxlZC4KPj4KPj4gRml4IHRoaXMgbGltaXRhdGlvbiBieSBv
YnRhaW5pbmcgdGhlIHN0YXJ0IGFkZHJlc3MgZnJvbSB0aGUgRFRCIGluc3RlYWQsCj4+IGlmIGF2
YWlsYWJsZSAoZWl0aGVyIGV4cGxpY2l0bHkgcGFzc2VkLCBvciBhcHBlbmRlZCB0byB0aGUga2Vy
bmVsKS4KPj4gRmFsbCBiYWNrIHRvIHRoZSB0cmFkaXRpb25hbCBtZXRob2Qgd2hlbiBuZWVkZWQu
Cj4+Cj4+IFRoaXMgYWxsb3dzIHRvIGJvb3QgTGludXggb24gcjdzOTIxMC9yemEybWV2YiB1c2lu
ZyB0aGUgNjQgTWlCIG9mIFNEUkFNCj4+IG9uIHRoZSBSWkEyTUVWQiBzdWIgYm9hcmQsIHdoaWNo
IGlzIGxvY2F0ZWQgYXQgMHgwQzAwMDAwMCAoQ1MzIHNwYWNlKSwKPj4gaS5lLiBub3QgYXQgYSBt
dWx0aXBsZSBvZiAxMjggTWlCLgo+Pgo+PiBTdWdnZXN0ZWQtYnk6IE5pY29sYXMgUGl0cmUgPG5p
Y29AZmx1eG5pYy5uZXQ+Cj4+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4+IFJldmlld2VkLWJ5OiBOaWNvbGFzIFBpdHJlIDxuaWNv
QGZsdXhuaWMubmV0Pgo+PiBSZXZpZXdlZC1ieTogQXJkIEJpZXNoZXV2ZWwgPGFyZGJAa2VybmVs
Lm9yZz4KPj4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3Vu
Zy5jb20+Cj4+IFRlc3RlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+
IAo+IFRoaXMgaXMgcmVhZHkgdG8gZ28gaW50byB0aGUgcGF0Y2ggc3lzdGVtLCBubz8KPiAKPiBU
aGUgc29vbmVyIFJ1c3NlbGwgcGlja3MgaXQgdXAsIHRoZSBzb29uZXIgSSBjYW4gcmVzcGluIG15
IHBhdGNoZXMKPiB0aGF0IGdvIG9uIHRvcC4KPiAKPiBUaGFua3MsCgpUaGUgdjUgd29ya3MgZm9y
IG1lIG9uIE5WSURJQSBUZWdyYSwganVzdCBpbiBjYXNlLgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
