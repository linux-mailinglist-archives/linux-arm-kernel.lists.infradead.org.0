Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BE31B9FFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DorsldZcf4wUikyWjTHVQoT+z+qG5BQ6zP8bgGeuTxI=; b=usdbqbP8idNp4b
	+vf0WnoPTzHmfrJE4i2MjUTB6iE4UFFsiWlf9Nmk3OVc4UPKMznXhBZ+ZAXAfRSNkO7gRU723p0hE
	kjYbLSLfipRZQK+hwB4QYyrEksYwPz3FgkNFYK4Nmq2x0vLuCwoORAvCMhUjeYlBN/wLiucicgaaQ
	GYINa0ISnafqZaXIV9h/R7ERIm6wTaqm05vNtKp3sphwHfeuQ3Z0319LOJnXucd9214JXU51ctXgL
	C7QBIzuMoznnQVSio5++4p4BdCB5qmfavY4JAApeVNLbX9T3dlIrpoPWIVjwmh1CnEV3QDWYk1odJ
	Q3OeE+2BaaeB0jx4FuRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT09o-0001gU-E5; Mon, 27 Apr 2020 09:34:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT09Y-0001ZF-0P
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:34:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id v4so15482403wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 02:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0buJB0z9KapxfIQw0uykwUPzio93i7DItEUMqAKMBfM=;
 b=W1fwGhZArB3B2+DBQNDEv9V+64OQ8DMPBLuaXDWDexY6GwpJKHGPvP8QLOUqJ+eecd
 LYwlEk4y61byAflGZJCxNnwv3M2D+V1DztpkRmr9NaPLjsNBtmMcpx+gKhE1FWJtbzeq
 E8mV63nPZ1voS1aaGRarY9DDHM4XhYzJxs7aMD/iJsXGEsmw6xpUx70SLa82zLMJwHNO
 BYTX66NO4EIVZXhcCKREjOgrM9CwPEaLbgjUFj+4OQ4VnoWIQzGwpv9LKLfIXTAN+VCf
 TyaAWmq/DugD7/QYX6WHZtMtCJ82zmWZnAEtI+VwJHIKY86oGOxOpLmSdCV7WlgZiNXe
 0fEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0buJB0z9KapxfIQw0uykwUPzio93i7DItEUMqAKMBfM=;
 b=Nbh/HHeHW+bkE/cRzBop3gryh+WJ2WmutBSSVIGGBT26kgyjlZiRZzxzzltwcF/2rJ
 Oto90ym8hhhHmP8U3kzTwGVydwtAMsk3wcvilKWU0Q+plD40RSLEI0GzYYTjx6aq0p3M
 a6wL/1lGSk1NDOi605jLsc4WAM8KB4x4hnoj6NPAPr1vFW1AME551/sUgKkMsJgOThdn
 N/OBHOzlNOy4+xkdsDu6uInx5bIhpY8K9y7iXSAHFn54DJP8eKtqzy2dEIuATYZN7INU
 wGcpnou+24w3DL0CrSYmucatrwgGWOmbnri+CD8ZbkYYpw94nhD6F9YxQ2Kwh9cUC0MV
 ygAQ==
X-Gm-Message-State: AGi0PubhZ96KauPgbjGdOMlQlVF3MlGEE4ll2iyBtboNzGEU6cBdFTqO
 xbDX8PYANiGrZOiNoiSEQJ2JLg==
X-Google-Smtp-Source: APiQypLLiKGcwY6bfTUQkodr+bdMNcsML1oG2j45dEjWZ1PUrpbvP951LYVzgT5rF/pECH7ry6RLdA==
X-Received: by 2002:a1c:7c10:: with SMTP id x16mr24540443wmc.74.1587980052807; 
 Mon, 27 Apr 2020 02:34:12 -0700 (PDT)
Received: from [192.168.0.41] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148])
 by smtp.googlemail.com with ESMTPSA id s12sm14131667wmc.7.2020.04.27.02.34.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 02:34:12 -0700 (PDT)
Subject: Re: [PATCH] clocksource: versatile: Allow CONFIG_CLKSRC_VERSATILE to
 be disabled
To: Rob Herring <robh@kernel.org>
References: <20200417212045.16917-1-robh@kernel.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <1d9c0b7a-cb40-9f66-e438-5e38293398b6@linaro.org>
Date: Mon, 27 Apr 2020 11:34:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200417212045.16917-1-robh@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_023416_060098_E411E97B 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTcvMDQvMjAyMCAyMzoyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gVGhlIHRpbWVyLXZlcnNh
dGlsZSBkcml2ZXIgcHJvdmlkZXMgYSBzY2hlZF9jbG9jayBmb3IgY2VydGFpbiBBcm0gTHRkLgo+
IHJlZmVyZW5jZSBwbGF0Zm9ybXMuIFNwZWNpZmljYWxseSwgaXQgaXMgdXNlZCBvbiBWZXJzYXRp
bGUgYW5kIDMyLWJpdAo+IFZFeHByZXNzLiBJdCBpcyBub3QgbmVlZGVkIGZvciB0aG9zZSBwbGF0
Zm9ybXMgd2l0aCBhbiBhcmNoIHRpbWVyIChhbGwKPiB0aGUgNjQtYml0IG9uZXMpIHlldCBDT05G
SUdfTUZEX1ZFWFBSRVNTX1NZU1JFRyBkb2VzIHN0aWxsIG5lZWQgdG8gYmUKPiBlbmFibGVkLiBJ
biB0aGF0IGNhc2UsIHRoZSB0aW1lci12ZXJzYXRpbGUgY2FuIG9ubHkgYmUgZGlzYWJsZWQgd2hl
bgo+IENPTVBJTEVfVEVTVCBpcyBlbmFibGVkIHdoaWNoIGlzIG5vdCBkZXNpcmFibGUuIExldCdz
IHVzZSB0aGUgc3ViLWFyY2gKPiBrY29uZmlnIHN5bWJvbHMgaW5zdGVhZC4KPiAKPiBSZWFsdmll
dyBwbGF0Zm9ybXMgZG9uJ3QgaGF2ZSB0aGUgc3lzcmVncyB0aGF0IHRoaXMgZHJpdmVyIHVzZXMg
c28KPiBjb3JyZWN0IHRoZSBoZWxwIHRleHQuCj4gCj4gQ2M6IERhbmllbCBMZXpjYW5vIDxkYW5p
ZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgo+IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRy
b25peC5kZT4KPiBDYzogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+
IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gVGhp
cyBpcyBwYXJ0IG9mIGEgbGFyZ2VyIGVmZm9ydCB0byBtb2R1bGFyaXplIFZlcnNhdGlsZSBFeHBy
ZXNzIHN1cHBvcnQsIAo+IGJ1dCB0aGlzIGNoYW5nZSBkb2Vzbid0IGhhdmUgYW55IGRlcGVuZGVu
Y3ksIHNvIGl0IGNhbiBiZSBhcHBsaWVkIAo+IGluZGVwZW5kZW50bHkuCgpBcHBsaWVkLCB0aGFu
a3MKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3Vy
Y2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFj
ZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMh
L2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cv
PiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
