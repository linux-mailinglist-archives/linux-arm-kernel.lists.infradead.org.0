Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB428CC44A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 22:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zISjOgdD7XCvlNzREYNUo0B6lqfLqq0bBk5u5KRBLEk=; b=HCvJpXbNHZhGi7
	q9dA2d7gBLjPQCs/T0Kc4Gc4sOTjeDa3LioJQq06qzZlyLgKEca8tvuFLQ5p8zCdkJLBnwcYXGySV
	y+GicX418YuWIbFy8RNPm5xEFi6bEC9Q5M/b+N1QL6R7sK2aXNQwJeGU83hsyNQWV8t+CDO2eVyPb
	fI8IbbcDR8X5qKN8/T4fOYX19Xj0rN640FoprhkRM7Rp1IBMZ4Fp8VDuuRxM5Mu6uNqEH8kOrOIS4
	yN1F9GHJOU9SFaR9f+pyD+SUEH7DOPX7bB5ViGQBJoeR63NNrdKxQ3tPZ3GUQxQH4WIyimC2Jie7H
	SnfnQBF0lqhmj6NvxcZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGUMc-0004gN-JV; Fri, 04 Oct 2019 20:39:46 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGUMP-0004fD-4D; Fri, 04 Oct 2019 20:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570221557;
 bh=51r0tcZ8GeAH/PWLpQq89bWWuD+TiQD1bIq9cOY1PQk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Y7vfM7kp1kOeqnuttFTsfsKkkq5Ol8jOdxpGd5aUxMVfCsjsI4UQoLBjUSFPDR7fn
 1EmyBg71r6r/PzGd+KfL+XWY81weZCQZ1lBI2BAvu2uaTx9/vECVgujopYAZLSzbbt
 th2/kyhbo2vFKX7/khyg6EhgnCn6blRndmqgIIFU=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([77.191.3.29]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0M6gdA-1htKjI3po4-00wWe7; Fri, 04
 Oct 2019 22:39:17 +0200
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_arm64=3a_dts=3a_rockchip=3a_fix_Roc?=
 =?UTF-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfr?=
 =?UTF-8?B?YWRlYWQub3Jn5Luj5Y+R44CR?=
To: Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <e4aaddc2-441b-b835-380e-374a3d935474@web.de>
 <c180ec58-083b-5730-a188-58eb6100b7b6@web.de> <2162187.GalWoky0CO@phil>
From: =?UTF-8?Q?S=c3=b6ren_Moch?= <smoch@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <a5514bb4-472e-b697-27a4-54e30d5679bd@web.de>
Date: Fri, 4 Oct 2019 22:39:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2162187.GalWoky0CO@phil>
Content-Language: en-GB
X-Provags-ID: V03:K1:3VkLq02MP3n3NDObe4FtrpHioWHHtcccvbg0vzgDwmPbBx3nUlr
 lDZY11tHDCCGA3L4JRbTXXmeSNjQwGDaI5dVUpKAhhZYAc53NkjY+5JxUTQO9dGdqifmxo5
 Ip0l9j7s37QSuGN1vqPErylQwnoNLxITejVESavZ6un/d4HD7cougZF9mlSSZldNDdmxSmD
 vmRKOJ0L1VSFwgKVc8BeQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yNeFNjnYnto=:ASmQsArBEHpMhOepwramr+
 HmwnKo5lRapkhEGwlrshnL0B7PuD0ALM4n3CVKtR0dhBmDbIafjGB6+a18aFiA4r/E5tH0L8S
 rtmAKahpO7fATIDFFm1swwlu5L/BEdfHQTlja4Y8J1FybCwRvaYpdRnYwQr30fWLawK5hi7nC
 Y6XErWCLsTLgpUSpUYP1sm1i9/RA9riaYCGPs9ocqamiC/6Sm5gI6KpFiseTRxB7strEhoeEj
 8zrROX8VuvgO1kjLY1hdE2fnLqwaxEbBWWbRaskUwFFAVG2qfunUizwhOieYe3UmXz0e+c8IO
 /v+MnC2cUVfO99/+1ocyba3iJllitndW33OvzamX5pdO6NdVtIg/cA5pkCEEGHdhFCi2Y2htS
 R1oX9c0bzBGqZBxkSh/tiy6ETKkXePNgZZwaA+k10HamuEwxcJcUWKR+CvCSrfGwrIA9TYZFe
 x34XLp8Aa9sk8itC6/atOiTC/O+231XnJmAQLbU+N08+RCQckhisrISvJNLRZ8kj7EqBCdzWE
 cH0uP9oMF/EJoK8KYTlTUTiQeYFZ/lKlYY2TWgxrNlpdeR7SiRJgoG0m6aR3f6h17U/zAuFOo
 moL7kPv4Se+68E9YtlQ+BG+zhcgiKdnxHwI+Huc49W/wUsaHCJJpXWlyvatt3BHaMvBxYjAUA
 cdHEsCgWAWTI5jOUwHK7/3Fc53oh2Sc6wSPp43D2H/sbcchxwWSltZJ05J3Ty3jlipDPgnGnn
 jjY309+ncEAdprpNCLePl+YQUijKOgOh5K3dzXST8QCLpn2NqiZesT9Z3qBgdXJu2S3Bol+pC
 eHIkd18Y+FIIcPb7q5y/q1lPkf7ZE2s3wtcm3w1DHHbSoYLUR7RuxNjrG3XS/B4mVfuE+db2t
 9xy4KWpwwK7YwEQMsTsWJhqwFwMs5jruxuYui9nWZhtqIDFLieZwBjAgVXYSKHQOXBby2d65S
 gZy6QlVoqy/zI74NNzhPCfCMOe86nrQFa2ddRPojrc0RRrz6+46Udbm8NUGs04BkrXR58cz+r
 +6z7ElRlbFS5Gr9o6H04Sbnojph+ndB5WqpdJ2rd8WEPNWNvkJcW2+Fy9/sFaPKPZ7zxtjute
 mOIe1voe6RWewypomlV8C7fu/47iQrXwh8AyWcS81EP5Aowp9ojskqWHZIQ7AtITHFc2sHrk5
 No4Ix3h/ZVQdgXI8tZ8hWjCYGP8dcGH3tUMs/gqLjh0FdexaCMrFKDX+o8GyXTe3JwoGm+GZi
 U8+wXBEqGm6J0GMmsFckeEkycAs4s004RtCqNEQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_133933_466026_B77B9268 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNC4xMC4xOSAyMjoxOCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gSGkgU8O2cmVuLAo+
Cj4gQW0gRnJlaXRhZywgNC4gT2t0b2JlciAyMDE5LCAyMjoxNTo0NSBDRVNUIHNjaHJpZWIgU29l
cmVuIE1vY2g6Cj4+IEhlaWtvLAo+Pgo+PiBzaW5jZSB5b3Ugc3RhcnRlZCB0byBhcHBseSB0aGUg
Zmlyc3QgMiBQYXRjaGVzIG9mIHRoaXMgc2VyaWVzICh0aGFua3MKPj4gZm9yIHRoYXQhKSwgbm93
IGFmdGVyIGFsbCB0aGUgZGlzY3Vzc2lvbnMgaGVyZSAoYW5kIHRoZSBoZWFkcy11cCBmb3IgdGhl
Cj4+IGltcGxlbWVudGVkIG1vZGUgZGV0ZWN0aW9uKSBJIHRoaW5rIHdlIHNob3VsZCBsZWF2ZSB0
aGUgdmNjX3NkaW8KPj4gcmVndWxhdG9yIHNldHRpbmdzIHVubW9kaWZpZWQuCj4gSSB3YXMgY29t
cG9zaW5nIGEgbWFpbCBhYm91dCBtZSBob2xkaW5nIG9mZiBvbiB0aGlzIHBhdGNoIGR1ZSB0byB0
aGUKPiBvbmdvaW5nIGRpc2N1c3Npb24gd2hlbiB5b3VyIG1haWwgY2FtZSA7LSkKPgo+PiBJdCBz
dGlsbCBjb3VsZCBtYWtlIHNlbnNlIHRvIHJlbW92ZSB0aGUgY2FwLW1tYy1oaWdoc3BlZWQgcHJv
cGVydHkuIEFyZQo+PiB5b3UgT0sgd2l0aCBhIFYyIHBhdGNoIGZvciB0aGF0Pwo+IFN1cmUsIGdv
IGFoZWFkLgo+Ck9LLCBJIHNlbnQgYSBWMiBwYXRjaCBmb3IgdGhhdC4KCk1heWJlIHNvbWVvbmUg
Y2FuIGNvbWUgdXAgd2l0aCBhIHJlYWwgc29sdXRpb24gZm9yIHRoZSAxLjhWLzMuM1YKcHJvYmxl
bSwgd2hpY2ggd291bGQgYWxsb3cgdG8gZW5hYmxlIHRoZSB1aHMtc2RyMTA0IG1vZGUgYnkgZGVm
YXVsdC4KRm9yIG5vdyBJIHRoaW5rIHdlIGhhdmUgdG8gbGl2ZSB3aXRoIHNkLWhpZ2hzcGVlZCB0
byBiZSBhYmxlIHRvCihyZS0pYm9vdCBmcm9tIFNELgoKVGhhbmtzLApTb2VyZW4KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
