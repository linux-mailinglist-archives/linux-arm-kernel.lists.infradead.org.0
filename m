Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E47C1425FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:44:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeIaN4XDc0f/lg2S1NhwcGdzglBMz/lendqgMQNFLYU=; b=qVCXhiR71fr6RD
	k4mgkrbtcyXrEcadwxcdxl36RqIfakS1ZQsTin+ZL5MpzZN7MjLZZ3ff/xOKl/caghYcGVIQuhJu/
	PZLa//llGjdqIpm7Y77Dx0GsDFi+rj6cRLZjtFqZcTRz1jmDdQJSjPEB6KY6oA7bs/mvh27p66swU
	MQ3O4cWa+5kfayROYijUbEe1kM56E3Bc/OUSAxTlq1pPmwXla1z3iJndM2vosNUpjEBxV7Z+qxG3P
	gwwncx8dBsL8XhRx7/811TJpySKxpZUJEZrAn6aYUFFL4ukIsJm7sLgxrk0GjUQJYeJ3sgAH6FI3P
	7tEsLe02YLfw+CpDpGtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSf3-0000XM-Re; Mon, 20 Jan 2020 08:43:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSer-0000VD-4p
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:43:45 +0000
Received: by mail-wr1-x444.google.com with SMTP id q6so28450656wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 00:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=gifHuIbCmX+R9NDRnITZu82J8BFsOQKVLbmsTjc0e3M=;
 b=musV59sR94nIPfcgLIQtZwLs7/Yv/sT8+U7PToHVQCNBIcL9rnHYPKzK/o72OFGbox
 jC5rDARSf8dVbjGdy1UbybpHRvHUWMVEnAJWJfY/VzyoM70ysvSBCWqNMlraAkrJ8eGO
 UFcbGHGVg2C7GbWXAWgdzcBbK80kqSgtqMC9mfwfNsUffbNzqADCqCqSn9oHEnxXyk2n
 PxwYRMqYfoafCx/frJnKYxhPj/KO5Gwc3r4Jg9XBiSpOfSupaGCRbAYKNcSs1kmUiGUD
 yuAit4UfcbMIbIdFYnIZfY59dbcgkaoQKR1W+VD8uNGNVebbWne7xwRuhiywuw78zJNQ
 S+mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=gifHuIbCmX+R9NDRnITZu82J8BFsOQKVLbmsTjc0e3M=;
 b=tFueZMnmkgX1uVhh78c29npWJQKsvSte8rRXpiPxMS8JzbwALr0OhgRu89/d0nw9Nl
 TLjUCUprfFPEGan6+vnJ3iQL5K/Le/J6KxJ5+ZKwzkAAVpONphd+9ozjP5gYxDeroXoe
 fuk4BkNj7kduukjexiGtvVvKJFzA/SW/M2rFaGL6ZHds23vAEAqxr0xsf3xAQHUBzNkk
 BtAXXw1+eLBgetBvFRkp8qh/frOY0bLIp0se+bKimDW6v1JIrHHAjVC0jfd9q55WvF58
 jtK3WAkRacf/EOU3zFiQH5Iv02i1+zZkE4h9dkB52XH6HgpgkTXbwFy3OH7/PVFp3wad
 FOhw==
X-Gm-Message-State: APjAAAUaOMfTyeiVw+1NTNI2z8EvqJH+kKB1VDz2RbGFo6IPWUHMUHht
 sGXegvvMBlwe9JtsiE3kZ6babw==
X-Google-Smtp-Source: APXvYqy+rWDfjjYcUJ9qyGjk1MjXcoc+KJXJZXfExAHNyyprH+X8jUuldYdSqr6JOsriaYepWzKiNA==
X-Received: by 2002:adf:df03:: with SMTP id y3mr17198094wrl.260.1579509819402; 
 Mon, 20 Jan 2020 00:43:39 -0800 (PST)
Received: from dell ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id n16sm47472001wro.88.2020.01.20.00.43.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 00:43:38 -0800 (PST)
Date: Mon, 20 Jan 2020 08:43:55 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [RESEND 1/4] dt-bindings: regulator: Add document for MT6359
 regulator
Message-ID: <20200120084355.GW15507@dell>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
 <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_004341_218313_8EE73096 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMCBKYW4gMjAyMCwgV2VuIFN1IHdyb3RlOgoKPiBGcm9tOiBXZW4gU3UgPHdlbi5z
dUBtZWRpYXRlay5jb20+Cj4gCj4gYWRkIGR0LWJpbmRpbmcgZG9jdW1lbnQgZm9yIE1lZGlhVGVr
IE1UNjM1OSBQTUlDCj4gCj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5v
cmc+Cj4gU2lnbmVkLW9mZi1ieTogV2VuIFN1IDx3ZW4uc3VAbWVkaWF0ZWsuY29tPgoKVGhlc2Ug
YXJlIGluIHRoZSB3cm9uZyBvcmRlci4gIFRhZ3Mgc2hvdWxkIGRlc2NyaWJlIGhpc3RvcnksIHRo
dXMKc2hvdWxkIGJlIGluIGNocm9ub2xvZ2ljYWwgb3JkZXIuICBGb3IgaW5zdGFuY2UsIHRoZSBv
cmRlcmluZyB5b3UgdXNlZApkZXNjcmliZXMgUm9iIHJldmlld2luZyB0aGUgcGF0Y2ggKmJlZm9y
ZSogeW91IHNlbnQgaXQsIHdoaWNoIGlzIG5vdApwb3NzaWJsZS4KCj4gLS0tCj4gIC4uLi9iaW5k
aW5ncy9yZWd1bGF0b3IvbXQ2MzU5LXJlZ3VsYXRvci50eHQgICAgICAgIHwgNTkgKysrKysrKysr
KysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JlZ3VsYXRv
ci9tdDYzNTktcmVndWxhdG9yLnR4dAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8g
U2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
