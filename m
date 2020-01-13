Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9858E139082
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1LiYncapXFkJbETTAE7Nlu7+jBuhBSZ1AfEORTFzEg=; b=a+0Ds6pu6ro5/i
	Js/P/dN2LuDgPqWHJQdZoym/WyZGlpLA7BezMENKv5ub5PehpvWXEqZuBk+OZYQmNF5LPdaVHjEMb
	4czGswzkA+PiEEaz3XdD+iCXHJORMHfF0wmtGzpODJOQeBTVbhx1admCNHOSdpFa0sq3il3ZHae5L
	+FnjSY5v36xWgurLYHXlcnCucSlP2QuPJlVLstAQJvPA+bR3KUpOtV6XJ1AlAU0tdTZszdRY7zpww
	2onFlB69L25LzfkxlASpnf0zX7U1lRE5G6zglAJPaD28GLoJLXL6lmTG8m8ifptrRmRES5VgcNfrR
	L7HtWxJjV2FrcpLdcQiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyMb-0006V8-Nt; Mon, 13 Jan 2020 11:58:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqyMP-0006UT-53
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:58:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id q10so8255354wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 03:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jmeZS4anFcQaXMcpaNE6Oqncxq6vLa6b4erMWpqoNlI=;
 b=v1MdmCCZShwVf8XkQd0I62htZin/oncbFvqYcgjWV8EHT17Nv0rL1Pjdut3iChBaar
 wlIBT2aZ+wqW0iXKSa7H7Om5GQGsYbGtE+je3T7k5nKxWLACaREjg/BAEvOuyVPDCgZm
 QogHvWEMuV0BtxgMaR6Sv1tqZUuM97gwfrhb3Em7MFDdpCk5bdYMH8+A8eJGaqXZ5Kkh
 DwzoE2JGcPA93Chvo1ou8ximYqYcev4dFAnQtE4LIJxQpz2rWlSAIKGuXVx3cGkikogA
 2HXRkqCbJkukfo//GzqrOSqrjb/wk5opPbhNFB8nvzvPZVJYlT3ZdPm7SDHVgW7yd9UZ
 uUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=jmeZS4anFcQaXMcpaNE6Oqncxq6vLa6b4erMWpqoNlI=;
 b=L+m6BRjFAFnO3HjNtRv1YiAj06TtPoWj2xPaoZxn4FOfwkRJPEJwJlszPipiJvOeWU
 0hZiJvaQdwISnz6pe/x2jRPhA6BeSg4hj/tD4YLe0wjerRIhtUfpQVFzxflvdzgPaSUu
 fXhh5IR55X/AyIy/T2U5em+XRoM2idOtHZSPJ0AGdNYeH20K//zfhVPnpUyWbox09wEF
 OTptMmRphQRVgvcn2smFaLg/fGUA2xCc5y7MkgLgxrmYgla8h/0j7iqQKuNA7C/xSf8o
 /19D2+xm8ewdhYQzFpZbDCBD17qCIXmYwQF4HHAz6Wc2gD2RCsZko9FJngT6U6eMISd3
 DcYA==
X-Gm-Message-State: APjAAAVkBlhSTFBnJamlVNNsRU6lr0WBmA5IDNBo7qeOBw7myhfpxqCS
 6yenmDqYJzAPKYdaXisLbBVeOgtdTs+IKA==
X-Google-Smtp-Source: APXvYqwTXmN/wzfsZzI5pdRXvNVjyM/rpo1JnbdBrPEIiYXjfTKCgLaCpQAQgHV2lYTiCu7P/1IB4Q==
X-Received: by 2002:adf:e5cb:: with SMTP id a11mr17300798wrn.28.1578916699533; 
 Mon, 13 Jan 2020 03:58:19 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:257b:a7b6:7749:8057?
 ([2a01:e34:ed2f:f020:257b:a7b6:7749:8057])
 by smtp.googlemail.com with ESMTPSA id
 y139sm14557785wmd.24.2020.01.13.03.58.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 03:58:19 -0800 (PST)
Subject: Re: [PATCH] cpuidle: arm: Enable compile testing for some of drivers
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20191229180912.17100-1-krzk@kernel.org>
 <20191229180912.17100-2-krzk@kernel.org> <112783298.KOQPr5xTch@kreacher>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <a4fa3f89-e792-aeee-b9ea-9af244ace04a@linaro.org>
Date: Mon, 13 Jan 2020 12:58:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <112783298.KOQPr5xTch@kreacher>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_035821_199421_0CD54542 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDEvMjAyMCAxMjo1MSwgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6Cj4gT24gU3VuZGF5
LCBEZWNlbWJlciAyOSwgMjAxOSA3OjA5OjEyIFBNIENFVCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+PiBTb21lIG9mIGNwdWlkbGUgZHJpdmVycyBmb3IgQVJNdjcgY2FuIGJlIGNvbXBpbGUg
dGVzdGVkIG9uIHRoaXMKPj4gYXJjaGl0ZWN0dXJlIGJlY2F1c2UgdGhleSBkbyBub3QgZGVwZW5k
IG9uIG1hY2gtc3BlY2lmaWMgYml0cy4gIEVuYWJsZQo+PiBjb21waWxlIHRlc3RpbmcgZm9yIGJp
Zy5MSVRUTEUsIEtpcmt3b29kLCBaeW5xLCBBVDkxLCBFeHlub3MgYW5kIG12ZWJ1Cj4+IGNwdWlk
bGUgZHJpdmVycy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPgo+PiAtLS0KPj4gIGRyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybSB8IDEy
ICsrKysrKy0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybSBi
L2RyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybQo+PiBpbmRleCBhMjI0ZDMzZGRhN2YuLjYyMjcy
ZWNmYTc3MSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jcHVpZGxlL0tjb25maWcuYXJtCj4+ICsr
KyBiL2RyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybQo+PiBAQCAtMjUsNyArMjUsNyBAQCBjb25m
aWcgQVJNX1BTQ0lfQ1BVSURMRQo+PiAgCj4+ICBjb25maWcgQVJNX0JJR19MSVRUTEVfQ1BVSURM
RQo+PiAgCWJvb2wgIlN1cHBvcnQgZm9yIEFSTSBiaWcuTElUVExFIHByb2Nlc3NvcnMiCj4+IC0J
ZGVwZW5kcyBvbiBBUkNIX1ZFWFBSRVNTX1RDMl9QTSB8fCBBUkNIX0VYWU5PUwo+PiArCWRlcGVu
ZHMgb24gQVJDSF9WRVhQUkVTU19UQzJfUE0gfHwgQVJDSF9FWFlOT1MgfHwgQ09NUElMRV9URVNU
Cj4+ICAJZGVwZW5kcyBvbiBNQ1BNICYmICFBUk02NAo+PiAgCXNlbGVjdCBBUk1fQ1BVX1NVU1BF
TkQKPj4gIAlzZWxlY3QgQ1BVX0lETEVfTVVMVElQTEVfRFJJVkVSUwo+PiBAQCAtNTEsMTMgKzUx
LDEzIEBAIGNvbmZpZyBBUk1fSElHSEJBTktfQ1BVSURMRQo+PiAgCj4+ICBjb25maWcgQVJNX0tJ
UktXT09EX0NQVUlETEUKPj4gIAlib29sICJDUFUgSWRsZSBEcml2ZXIgZm9yIE1hcnZlbGwgS2ly
a3dvb2QgU29DcyIKPj4gLQlkZXBlbmRzIG9uIE1BQ0hfS0lSS1dPT0QgJiYgIUFSTTY0Cj4+ICsJ
ZGVwZW5kcyBvbiAoTUFDSF9LSVJLV09PRCB8fCBDT01QSUxFX1RFU1QpICYmICFBUk02NAo+PiAg
CWhlbHAKPj4gIAkgIFRoaXMgYWRkcyB0aGUgQ1BVIElkbGUgZHJpdmVyIGZvciBNYXJ2ZWxsIEtp
cmt3b29kIFNvQ3MuCj4+ICAKPj4gIGNvbmZpZyBBUk1fWllOUV9DUFVJRExFCj4+ICAJYm9vbCAi
Q1BVIElkbGUgRHJpdmVyIGZvciBYaWxpbnggWnlucSBwcm9jZXNzb3JzIgo+PiAtCWRlcGVuZHMg
b24gQVJDSF9aWU5RICYmICFBUk02NAo+PiArCWRlcGVuZHMgb24gKEFSQ0hfWllOUSB8fCBDT01Q
SUxFX1RFU1QpICYmICFBUk02NAo+PiAgCWhlbHAKPj4gIAkgIFNlbGVjdCB0aGlzIHRvIGVuYWJs
ZSBjcHVpZGxlIG9uIFhpbGlueCBaeW5xIHByb2Nlc3NvcnMuCj4+ICAKPj4gQEAgLTcwLDE5ICs3
MCwxOSBAQCBjb25maWcgQVJNX1U4NTAwX0NQVUlETEUKPj4gIGNvbmZpZyBBUk1fQVQ5MV9DUFVJ
RExFCj4+ICAJYm9vbCAiQ3B1IElkbGUgRHJpdmVyIGZvciB0aGUgQVQ5MSBwcm9jZXNzb3JzIgo+
PiAgCWRlZmF1bHQgeQo+PiAtCWRlcGVuZHMgb24gQVJDSF9BVDkxICYmICFBUk02NAo+PiArCWRl
cGVuZHMgb24gKEFSQ0hfQVQ5MSB8fCBDT01QSUxFX1RFU1QpICYmICFBUk02NAo+PiAgCWhlbHAK
Pj4gIAkgIFNlbGVjdCB0aGlzIHRvIGVuYWJsZSBjcHVpZGxlIGZvciBBVDkxIHByb2Nlc3NvcnMu
Cj4+ICAKPj4gIGNvbmZpZyBBUk1fRVhZTk9TX0NQVUlETEUKPj4gIAlib29sICJDcHUgSWRsZSBE
cml2ZXIgZm9yIHRoZSBFeHlub3MgcHJvY2Vzc29ycyIKPj4gLQlkZXBlbmRzIG9uIEFSQ0hfRVhZ
Tk9TICYmICFBUk02NAo+PiArCWRlcGVuZHMgb24gKEFSQ0hfRVhZTk9TIHx8IENPTVBJTEVfVEVT
VCkgJiYgIUFSTTY0Cj4+ICAJc2VsZWN0IEFSQ0hfTkVFRFNfQ1BVX0lETEVfQ09VUExFRCBpZiBT
TVAKPj4gIAloZWxwCj4+ICAJICBTZWxlY3QgdGhpcyB0byBlbmFibGUgY3B1aWRsZSBmb3IgRXh5
bm9zIHByb2Nlc3NvcnMuCj4+ICAKPj4gIGNvbmZpZyBBUk1fTVZFQlVfVjdfQ1BVSURMRQo+PiAg
CWJvb2wgIkNQVSBJZGxlIERyaXZlciBmb3IgbXZlYnUgdjcgZmFtaWx5IHByb2Nlc3NvcnMiCj4+
IC0JZGVwZW5kcyBvbiBBUkNIX01WRUJVICYmICFBUk02NAo+PiArCWRlcGVuZHMgb24gKEFSQ0hf
TVZFQlUgfHwgQ09NUElMRV9URVNUKSAmJiAhQVJNNjQKPj4gIAloZWxwCj4+ICAJICBTZWxlY3Qg
dGhpcyB0byBlbmFibGUgY3B1aWRsZSBvbiBBcm1hZGEgMzcwLCAzOHggYW5kIFhQIHByb2Nlc3Nv
cnMuCj4+Cj4gCj4gRGFuaWVsLCBhbnkgY29uY2VybnMgcmVnYXJkaW5nIHRoaXMgb25lPwoKWWVz
LCBJIGhhdmUgYSBkb3VidCBhYm91dCB0aGlzIHBhdGNoLiBJJ2xsIGRvdWJsZSBjaGVjayBiZWZv
cmUgY29tbWVudGluZy4KCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8
aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8v
dHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
