Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C40D889A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 08:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bTnkJYABqDVbTHR3vJQNCH0SvgLaTFSExQhwKmc+1E=; b=CY7mhMGzVMh13R
	yPVK+nIi+Wr8F8drppCy+L31ZCivQ8FQl+UOBS6I8/aW615g/I38fgO3mYxxrsWZJh+V9arNNyN1S
	6OPRM9KRmjDJhvzQs6u9AZLRDkoLgsd5ABD/ZQDSGoHb5iNJXPYYnnCW3BzfNKqTu4LPvdSHh1b3V
	J7rxzSsD76YEbBIbEHc1t3BYRqSUlEMs9oH9/ljuNw8NnoQTqP/hrayEV1qKxeFtKc+3yeVPYwLW1
	tPLDj/Eog8FVv18p/MEai+DXWdEwKNKYgdGC/fT4JVYU0+mpDtLJxj7vUYJ77kmRdtqw7mW+jDKgU
	Qtp9tp8MA9pm0MFRYZ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKcjy-0008UF-3Y; Wed, 16 Oct 2019 06:24:58 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKcjl-0008Sw-OO; Wed, 16 Oct 2019 06:24:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1571207070;
 bh=0p6dSM6PENsJyEfXE4U7vsSYM0mBFd/NXBg3mvut6gg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=KLCmiSQdxe9okohtHqmP9HHG4ERukQSBUHkfzQvn6bfTgPb2Amf5AmLPAtprXU7/L
 px4a3EpH1/7qbJOJTQTSw1LOMcaF5rAsQw1GoRiuSmcVkEApi0hh8Hy1aYEV/jKjrH
 AEruZxD4kKJcgBpAf0DVu846s3FK387oUvAwcD3U=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.85.206]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MLgQp-1iKLU52WN1-000r1q; Wed, 16
 Oct 2019 08:24:30 +0200
Subject: Re: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
 <2588953.0pqkEXWxhN@phil> <45588ab8-2a6c-3f29-61ff-bccf8d6fb291@web.de>
 <5173392.uhhkXBHGmO@phil>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <e4540cb0-7fcc-ce1e-f687-c725f5e8b209@web.de>
Date: Wed, 16 Oct 2019 08:24:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <5173392.uhhkXBHGmO@phil>
Content-Language: en-US
X-Provags-ID: V03:K1:i+Z1+vuuVeMv0jTbPGmTYTQ7in95qy9wdCmNE9Qjmm19nTEhAhG
 8uzMHUg0b5Lkx0DtpREcdxWvKzErJ5Rf0mVKBXOtYx556scFVkNYU6jj+C581nQfA0jvX8g
 v5fCSja7D5O2mXL6QgARY9Je5FGwjNYmQcoNglnmWzarjKflkTQ062BH7ifApZYM4gtuUFi
 9xhxvYNzLX+wYqdtlPTfw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YDX/EkHvGXc=:o2jLrnfPJ5YRyb2d0eDp6n
 V8v9536ArQwkb77EFMR86TTl1kmHENcCXRjcDhyBCSFwwzpuUBioBlkWMVU9V8m9IayNj797G
 jigyvRKl3rSUHPA5cyhqKAXgZ7H3eq2pXTLA4gELrv3HKhfF5pJkiPb56VitwNJWgFMFX6zzw
 nOP/OEX6Llo3xU5PGd/Eha14VEjgH1bmrW5YoB7AvGC3XN03sdHygii+CAZ2p4zS3aGDcbPgZ
 mtbSevU7+vkCfP2tc9bgAu1Ra5R55WHFqLyFKnVWCfwcYFzO/IgFT+JC6wyA+VGZ+En3yw6tB
 HUrR3p9v8g8bp3iSA2O7NOvZ4GxoKxFNCxRM6Ze3O18ujD7V9z8bg9uBoEpuuFSkfYK94Qgg3
 FKWe3sBxxen0nrICa+LLyX0fwq6zdv+1H4qNiP3J7ORq3lF06t60o45wFx3JioMX9cBAwgZqe
 v4Z9v6Qnc9Wong3eiBQQ6BN0/f8h9uypeOLGmBV/JwxbAYJ/LZbgYBwbed8L5UDWQQaFs7Vc0
 3OHAs+Z0BIdUKg8rjEKzG4iwjXWzkwS//b1OW4Gj1L0z/r+vBPrg2az0nQduOWqQtcj7APFf4
 C9ZwE7Vr9T++U3oU7mUSi2ohLYPYG8n75VA6MbvOBsTvYjUl7Ss2XTnT9QCKEzDeFzqr1b2lX
 jf+R0SdjakoEzxZg7ZUQMHyKof+k9tJxjlqT414gP64oVK7bHgSPQdoOFas5Jjsfe6oFIgmoK
 s4EvJTF+4xJVfKjyS+z5xIGsNbTfTqeFQ2nvSXY2McB3dTnbVvg6Yv+jiVQw0r+hSbbWU/Ud7
 y+/Hh74jVWcubUyOPbIykusLAdSkq2aZUSraBB1jMYpzh8JmNeJkUykJ7tX3s3+tbUSJKEqwc
 ppIW3XH69bwSi9W2ILsUEC3wB4uJT3XH5UMVdwiU6aw8tPD7mL/RmPPCtn05X5ewsVL3jloN4
 tjbJAF/bDuboVkB2imzaMqePdHBDVcnJy8tAkGExDu95zUtbneATS8JPSHfTxSxeuZGVgEsN/
 wtZcwutSv6OmhKMugxs1MNHnkyAjdWfvzPB88Sf53Y+AE7SdB2cWOlqEzWWVxKWjleDBrIzjS
 OPRofIOdPIRj2Uo3QSyYHkDgBLT18fckbRnVIy01TpZpGbsdhU0u53vlXZeL/gv03Yj+j/MNk
 4q4sZVuAyDcK4SlcJumO0ANHs+wtgqk1zAwSLvmG5bHXYrv7N3Uo5zUr+lmGr/n0JXb7qKegC
 auvHsmsP/ZfRxh2fCSum5nPUfSxCGMtoj1wIrnYwfMEPMPfEO4ixGmpn42MI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_232446_132111_274E02F6 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, kernel-janitors@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen McCamant <smccaman@umn.edu>, Kangjie Lu <kjlu@umn.edu>,
 LKML <linux-kernel@vger.kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Aditya Pakki <pakki001@umn.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pj4gV291bGQgeW91IGxpa2UgdG8gYWRqdXN0IHN1Y2ggZXhjZXB0aW9uIGhhbmRsaW5nIGFub3Ro
ZXIgYml0Pwo+Cj4gTm9wZS4KPgo+IFRoZSBiaWcgZGlmZmVyZW5jZSBpcyB0aGF0IGNsb2NrcyBy
ZWx5IGhlYXZpbHkgb24gdGhlaXIgbmFtZXMgdG8gZXN0YWJsaXNoCj4gdGhlIGNsb2NrIHRyZWUg
cGFyZW50c2hpcC4gU28gdGhlIFBMTCBjYW5ub3Qgd29yayB3aXRob3V0IHRoZSBuYW1lCgpUaGlz
IGVycm9yIHNpdHVhdGlvbiBnb3QgYSBzcGVjaWZpYyByZWFjdGlvbi4KCgo+IGJ1dCBjYW4gcHJv
dmlkZSBzb21lIG1lYW5zIG9mIGZ1bmN0aW9uYWxpdHkgd2l0aG91dCB0aGUgcmF0ZS10YWJsZQo+
IGVzcGVjaWFsbHkgYXMgYm9vdGxvYWRlcnMgZG8gZ2VuZXJhbGx5IGluaXRpYWxpemUgYSBQTEwg
dG8gc29tZSBmb3JtIG9mCj4gc2FuZSBmcmVxdWVuY3kuCgpJIGltYWdpbmUgdGhhdCBhIGNob2lj
ZSBpcyBhdmFpbGFibGUgaGVyZSBmb3IgdGhlIGVycm9yIGhhbmRsaW5nIHN0cmF0ZWd5LgoKKiBS
ZXR1cm4g4oCcRVJSX1BUUigtRU5PTUVNKeKAnSBhcyBhIHN0cmljdCByZXNwb25zZSBsaWtlIGlu
IHRoZSBvdGhlciBlcnJvciBjYXNlLgoKKiBGaXggdGhlIHNldHRpbmcg4oCccGxsLT5yYXRlX2Nv
dW504oCdIGF0IGxlYXN0ICh0byBiZSBhIGJpdCBtb3JlIHRvbGVyYW50KS4KICBXb3VsZCBhbnkg
c3lzdGVtIHVzZXJzIHdvbmRlciB0aGVuIGFib3V0IHRoZSBhdmFpbGFiaWxpdHkgb2Ygb25seQog
IGEgc2luZ2xlIGZyZXF1ZW5jeSAoaW5zdGVhZCBvZiBwb3NzaWJseSBleHBlY3RlZCBhbHRlcm5h
dGl2ZXMpPwoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
