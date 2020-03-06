Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08E717B74C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 08:22:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54ZPjOEbwBVySl+HUo/pI/YObYgexdz5vjgxxB5FQrg=; b=IniBN/OV8YOPIb
	AzDKL8UPM4C1+J5L0F45J00HkCzLQLNU9flT3aUsG4ZVzth25NFFLeaSJGuRbUNzIRIMFcDswnVBr
	K3E5yFekxxWPUCfqS008IUfDEXSh51qS58QxcDWaXTIBXXzwgIdoO4Y/v2WZSpoY5NyzsVsMOWurU
	Gp1hef4/qXfElg+GpK4LdjoTCv8c5B3xfEDXZYHtkEZ+BCyJfhM0CrUyQNy0O2yQylXg7ZmsB5bTa
	fWB6XxFMUaBmcf6ANqYoq64+DR0DrWXK0h2FDF49d0HB5L5WX1ztKrzlTQVAirsiufPkc6X8wM6Gd
	qcsyf5Wv/1+oj1GX1dsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA7JI-0001mF-7H; Fri, 06 Mar 2020 07:22:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA7J9-0001kQ-6b; Fri, 06 Mar 2020 07:22:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id s17so159033wrs.3;
 Thu, 05 Mar 2020 23:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SnUqcrVsJzqJaaVzt0hPVe/gTQHBXGhcLib5WHQ/AJU=;
 b=p1IRc54H8JzpxRZeZG0bSTeItFXg8PjCDo21GH34exsa4OQYBGv6BRnOcCVkFANCiQ
 8dZCcI8PQnGba7V5LgTgvN0ETfNr+6jiDBa9JtgXS3lQtjn/S3n1Kf3WHv+ew/SzUmSk
 w7qihFs65T7614lKbUMSZrVVzGFfLc6sHKR1zMjBMk1XXl9Uaw395Gr+zeZsQWU1C4zI
 XYRtTPb4dzWNR5zjwLdFKfaXb7fiDF3kwG+2KuDBV4zDlQYNrcJEeSxZw+CEh06Mhfvu
 gedGylWQ/43fy9sKMJ+fG3n9R6fgYGItazcFMNVKEuexXIiVh1Ixo2a9DIIeJz7NgNhQ
 Hmrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SnUqcrVsJzqJaaVzt0hPVe/gTQHBXGhcLib5WHQ/AJU=;
 b=K7O6fRPp4toyidBfeW/XlZiWlceSLSXZCc4dbmn9fUY7WyolbGqsWxHhAN42qkqlbS
 6FiJPq+8Fphe+PtqaFWmhkh3ZYxNhEmU7P2flmfyrtm/tviZqIHK5wmUI4hu023xxr7K
 RgIsU5e22maCHNgWjvyZMrWmblFqrPVY9KWnoLuOrQU4jfoXru7zcQHBzkyFzw3FTeHP
 ZYLcYp/zv7xGTZlphrXLNFMScLZo5QHtX2qZXmUnYhBOXkOSWxzbuiOEGV0K+P4qJgaf
 8777BbuPZBM3ZWR+yPghXOP1paIHQaNK+5q/sWldyreTLuuJOuNnx03Xguqdns3bk7zx
 3eew==
X-Gm-Message-State: ANhLgQ3PPI5dIhMfQnNo2+aoa68QmFtYATCfElmXuMyV/S1AT6NiJkZ2
 47QFP+dW06yEBMUMOfn7yLk=
X-Google-Smtp-Source: ADFU+vt15QdHPEyOlXqze4BvjuHTIZJH5fEAu12zNjWL5ctAZ2d9xwsBEuNTt0doZ65A7htgMnXryA==
X-Received: by 2002:a5d:4d48:: with SMTP id a8mr2431238wru.35.1583479324472;
 Thu, 05 Mar 2020 23:22:04 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f207sm14897847wme.9.2020.03.05.23.22.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Mar 2020 23:22:02 -0800 (PST)
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
To: Heiko Stuebner <heiko@sntech.de>, Tobias Schramm <t.schramm@manjaro.org>
References: <20200304213023.689983-2-t.schramm@manjaro.org>
 <20200304213023.689983-3-t.schramm@manjaro.org> <6168222.Wuk326WHQK@phil>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7a799284-92ab-ea04-285e-37d655064118@gmail.com>
Date: Fri, 6 Mar 2020 08:22:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <6168222.Wuk326WHQK@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_232207_269301_D5B40105 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Emmanuel Vadot <manu@freebsd.org>, Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Matthias Kaehlcke <mka@chromium.org>,
 Vivek Unune <npcomplete13@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpNaXNzaW5nICNhZGRyZXNzLWNlbGxzLCAjc2l6ZS1jZWxscwpDYW4geW91IHN0aWxsIGZp
eCB0aGF0PwoKT24gMy82LzIwIDE6MjMgQU0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEFtIE1p
dHR3b2NoLCA0LiBNw6RyeiAyMDIwLCAyMjozMDoyMyBDRVQgc2NocmllYiBUb2JpYXMgU2NocmFt
bToKPj4gVGhpcyBjb21taXQgYWRkcyBpbml0aWFsIGR0IHN1cHBvcnQgZm9yIHRoZSByazMzOTkg
YmFzZWQgUGluZWJvb2sgUHJvLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUb2JpYXMgU2NocmFtbSA8
dC5zY2hyYW1tQG1hbmphcm8ub3JnPgo+IAo+IGFwcGxpZWQgZm9yIDUuNwo+IAo+IFRoYW5rcwo+
IEhlaWtvCj4gCj4gCgo+ICsmZWRwIHsKPiArCWZvcmNlLWhwZDsKPiArCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JmVkcF9ocGQ+Owo+ICsJc3RhdHVzID0gIm9r
YXkiOwo+ICsKPiArCXBvcnRzIHsKCiNhZGRyZXNzLWNlbGxzID0gPDE+Owojc2l6ZS1jZWxscyA9
IDwwPjsKCkRvbid0IGZvcmdldCB0aGF0IGV4dHJhIGVtcHR5IGxpbmUgaGVyZS4KCgo+ICsJCWVk
cF9vdXQ6IHBvcnRAMSB7Cj4gKwkJCXJlZyA9IDwxPjsKPiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8
MT47Cj4gKwkJCSNzaXplLWNlbGxzID0gPDA+Owo+ICsKPiArCQkJZWRwX291dF9wYW5lbDogZW5k
cG9pbnRAMCB7Cj4gKwkJCQlyZWcgPSA8MD47Cj4gKwkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JnBh
bmVsX2luX2VkcD47Cj4gKwkJCX07Cj4gKwkJfTsKPiArCX07Cj4gK307CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
