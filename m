Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3101ADB15
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvInLLEEbdxQWxcX+APfYqGx4I9U084e9igxNgjDjI8=; b=cbUn48AAOZATwc
	iB84fPOCk8NqU94Sv2CISQz4T8w5c5np35k9b9TGkJfc0AkPIs5TaGVrUSkmQ4uNklqOQBACBNBEP
	U3rZVu7YZ6kWo0PSB8EZNBD5dTsBL3xyh3FADh2z+VaEMr+ivjaQLJEUM6iZgcqwCg0JBKbyVr5sx
	pchJF09xtK7T1O9VNUkh+xyF1XgGYuQWl3LblpTVj6l5Wf88pqt+acvd4OaTRLQXgd/T8weO0tgY4
	fJvhG/oxWDiYq7BtNaeMdO/cUYDhP3zvSg2AdtNnHBWiv87bMDkddX8c5ScYvblbhum+SAq1fm4YB
	hwDHoHWghYT5PCBRMB7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOIc-0007rW-PU; Fri, 17 Apr 2020 10:32:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOIW-0007qQ-F4
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:32:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id g13so428873wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 03:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=107gFRkToKH3NZvEzE8D2zQk2B7UQGVYWH3FpM3ffbQ=;
 b=pT1ZPbKIzeOuCLAGwau2qh6AMP05LfNf9H23Mf2O3gsd15pclob8765UcLXtYetbPJ
 tW62+lUJpJcjEBR3UgD04tLEWlMRZvnXZlmDT1BoBH9QoVIvD60GNORkBEolOXl/BjPh
 9XThsJSY/xjjkqyJJAXGLyI/HB4J15kFHjLYD+1K+EP+gqAiv4YoIUcEnqtidGOIiueV
 zTvOBPY9OnOfoBmHGwSx14yxh6y0kuhijDBkFTZKthvd/L9lj6EZ3vxC9Q/dHE+uvk/x
 CSmkXE5EGApOLTFfzUsar1xydm0g5G1kDzCVMa5P7hfVzmecFNz/om0CJECT4us9mTiI
 X8zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=107gFRkToKH3NZvEzE8D2zQk2B7UQGVYWH3FpM3ffbQ=;
 b=JKANjAGKnYcw/BqOOBLYS7VOLnnnVZ9ycpPONP62gQzEzrKVuAQoS0pzFtatxPVsAd
 zSZczIfzcxGtXjEtmvk51l0Yq9NopgHcBUWByWDU7nGmnO5QiNdMPxD4rB3IoCWXD6Pl
 j4/Cj7dO4PcQ/sVbJkbeepA5+Zt5vmV9H3/DpuAv+USkiieS/o5LWj+yp2GQU1v9cg0B
 k8f3J1vWEtwcj2UiPjawt6eJE7/XRB11xRIL1QBa8Vrd7H5qrSxO117lhh735w8v4Ibb
 vOvQMqjZkQEy7aPhsDWEDoKnh8sOpnmnrrjkvqzQBZf1IXj1003K5+nvYUiNOsvujzCW
 Fdlg==
X-Gm-Message-State: AGi0Pua8UbhTadA9KbghTZr3wlFldWJeaPtz0rme5vE5eXW8GeCTvvCT
 yRvz5YKh6tRSGDLSaWadGi6ycg==
X-Google-Smtp-Source: APiQypIfmSfeb691l/CD81jIS3LbFcVmiFUm6gA93sVAsJxA5uo5BTobaVoE1BIDagtfVzSXji3Jtw==
X-Received: by 2002:adf:dd84:: with SMTP id x4mr3479893wrl.210.1587119553482; 
 Fri, 17 Apr 2020 03:32:33 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id t20sm6692113wmi.2.2020.04.17.03.32.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 03:32:32 -0700 (PDT)
Date: Fri, 17 Apr 2020 11:33:34 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH resend v8] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20200417103334.GD3737@dell>
References: <1586273804-7722-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586273804-7722-1-git-send-email-gene.chen.richtek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_033236_498664_7155959E 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwNyBBcHIgMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBBZGQgbWZkIGRyaXZlciBm
b3IgbXQ2MzYwIHBtaWMgY2hpcCBpbmNsdWRlCj4gQmF0dGVyeSBDaGFyZ2VyL1VTQl9QRC9GbGFz
aCBMRUQvUkdCIExFRC9MRE8vQnVjawo+IAo+IFNpZ25lZC1vZmYtYnk6IEdlbmUgQ2hlbiA8Z2Vu
ZV9jaGVuQHJpY2h0ZWsuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICB8
ICAxMiArKwo+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAgICAgICB8ICAgMSArCj4gIGRyaXZlcnMv
bWZkL210NjM2MC1jb3JlLmMgIHwgNDI1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaCB8IDI0MCArKysrKysr
KysrKysrKysrKysrKysrKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwgNjc4IGluc2VydGlvbnMoKykK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMKPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM2MC5oCj4gCj4gY2hhbmdlbG9ncyBi
ZXR3ZWVuIHYxICYgdjIKPiAtIGluY2x1ZGUgbWlzc2luZyBoZWFkZXIgZmlsZQo+IAo+IGNoYW5n
ZWxvZ3MgYmV0d2VlbiB2MiAmIHYzCj4gLSBhZGQgY2hhbmdlbG9ncwo+IAo+IGNoYW5nZWxvZ3Mg
YmV0d2VlbiB2MyAmIHY0Cj4gLSBmaXggS2NvbmZpZyBkZXNjcmlwdGlvbgo+IC0gcmVwbGFjZSBt
dDYzNjBfcG11X2luZm8gd2l0aCBtdDYzNjBfcG11X2RhdGEKPiAtIHJlcGxhY2UgcHJvYmUgd2l0
aCBwcm9iZV9uZXcKPiAtIHJlbW92ZSB1bm5lY2Vzc2FyeSBpcnFfY2hpcCB2YXJpYWJsZQo+IC0g
cmVtb3ZlIGFubm90YXRpb24KPiAtIHJlcGxhY2UgTVQ2MzYwX01GRF9DRUxMIHdpdGggT0ZfTUZE
X0NFTEwKPiAKPiBjaGFuZ2Vsb2dzIGJldHdlZW4gdjQgJiB2NQo+IC0gcmVtb3ZlIHVubmVjZXNz
YXJ5IHBhcnNlIGR0IGZ1bmN0aW9uCj4gLSB1c2UgZGV2bV9pMmNfbmV3X2R1bW15X2RldmljZQo+
IC0gYWRkIGJhc2UtY29tbWl0IG1lc3NhZ2UKPiAKPiBjaGFuZ2Vsb2dzIGJldHdlZW4gdjUgJiB2
Ngo+IC0gcmV2aWV3IHJldHVybiB2YWx1ZQo+IC0gcmVtb3ZlIGkyYyBpZF90YWJsZQo+IC0gdXNl
IEdQTCBsaWNlbnNlIHYyCj4gCj4gY2hhbmdlbG9ncyBiZXR3ZWVuIHY2ICYgdjcKPiAtIGFkZCBh
dXRob3IgZGVzY3JpcHRpb24KPiAtIHJlcGxhY2UgTVQ2MzYwX1JFR01BUF9JUlFfUkVHIGJ5IFJF
R01BUF9JUlFfUkVHX0xJTkUKPiAtIHJlbW92ZSBtdDYzNjAtcHJpdmF0ZS5oCj4gCj4gY2hhbmdl
bG9ncyBiZXR3ZWVuIHY3ICYgdjgKPiAtIGZpeCBrYnVpbGQgYXV0byByZWJvb3QgYnkgaW5jbHVk
ZSBpbnRlcnJ1cHQgaGVhZGVyCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL0tjb25maWcg
Yi9kcml2ZXJzL21mZC9LY29uZmlnCj4gaW5kZXggMmIyMDMyOS4uMGY4YzM0MSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL21mZC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9tZmQvS2NvbmZpZwo+IEBA
IC04NTcsNiArODU3LDE4IEBAIGNvbmZpZyBNRkRfTUFYODk5OAo+ICAJICBhZGRpdGlvbmFsIGRy
aXZlcnMgbXVzdCBiZSBlbmFibGVkIGluIG9yZGVyIHRvIHVzZSB0aGUgZnVuY3Rpb25hbGl0eQo+
ICAJICBvZiB0aGUgZGV2aWNlLgo+ICAKPiArY29uZmlnIE1GRF9NVDYzNjAKPiArCXRyaXN0YXRl
ICJNZWRpYXRlayBNVDYzNjAgU3ViUE1JQyIKPiArCXNlbGVjdCBNRkRfQ09SRQo+ICsJc2VsZWN0
IFJFR01BUF9JMkMKPiArCXNlbGVjdCBSRUdNQVBfSVJRCj4gKwlkZXBlbmRzIG9uIEkyQwo+ICsJ
aGVscAo+ICsJICBTYXkgWSBoZXJlIHRvIGVuYWJsZSBNVDYzNjAgUE1VL1BNSUMvTERPIGZ1bmN0
aW9uYWwgc3VwcG9ydC4KPiArCSAgUE1VIHBhcnQgaW5jbHVkZXMgQ2hhcmdlciwgRmxhc2hsaWdo
dCwgUkdCIExFRAo+ICsJICBQTUlDIHBhcnQgaW5jbHVkZXMgMi1jaGFubmVsIEJVQ0tzIGFuZCAy
LWNoYW5uZWwgTERPcwo+ICsJICBMRE8gcGFydCBpbmNsdWRlcyA0LWNoYW5uZWwgTERPcwo+ICsK
PiAgY29uZmlnIE1GRF9NVDYzOTcKPiAgCXRyaXN0YXRlICJNZWRpYVRlayBNVDYzOTcgUE1JQyBT
dXBwb3J0Igo+ICAJc2VsZWN0IE1GRF9DT1JFCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL01h
a2VmaWxlIGIvZHJpdmVycy9tZmQvTWFrZWZpbGUKPiBpbmRleCBiODNmMTcyLi44YzM1ODE2IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9tZmQvTWFr
ZWZpbGUKPiBAQCAtMjM4LDYgKzIzOCw3IEBAIG9iai0kKENPTkZJR19JTlRFTF9TT0NfUE1JQykJ
Kz0gaW50ZWwtc29jLXBtaWMubwo+ICBvYmotJChDT05GSUdfSU5URUxfU09DX1BNSUNfQlhUV0Mp
CSs9IGludGVsX3NvY19wbWljX2J4dHdjLm8KPiAgb2JqLSQoQ09ORklHX0lOVEVMX1NPQ19QTUlD
X0NIVFdDKQkrPSBpbnRlbF9zb2NfcG1pY19jaHR3Yy5vCj4gIG9iai0kKENPTkZJR19JTlRFTF9T
T0NfUE1JQ19DSFREQ19USSkJKz0gaW50ZWxfc29jX3BtaWNfY2h0ZGNfdGkubwo+ICtvYmotJChD
T05GSUdfTUZEX01UNjM2MCkJKz0gbXQ2MzYwLWNvcmUubwo+ICBtdDYzOTctb2Jqcwk6PSBtdDYz
OTctY29yZS5vIG10NjM5Ny1pcnEubwo+ICBvYmotJChDT05GSUdfTUZEX01UNjM5NykJKz0gbXQ2
Mzk3Lm8KPiAgb2JqLSQoQ09ORklHX0lOVEVMX1NPQ19QTUlDX01SRkxEKQkrPSBpbnRlbF9zb2Nf
cG1pY19tcmZsZC5vCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMgYi9k
cml2ZXJzL21mZC9tdDYzNjAtY29yZS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAw
MDAwMDAwLi5kMTE2OGY4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbWZkL210NjM2
MC1jb3JlLmMKPiBAQCAtMCwwICsxLDQyNSBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMAo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgTWVkaWFUZWsgSW5jLgoK
VGhpcyBpcyBvdXQgb2YgZGF0ZS4KCj4gKyAqIEF1dGhvcjogR2VuZSBDaGVuIDxnZW5lX2NoZW5A
cmljaHRlay5jb20+Cj4gKyAqLwoKWy4uLl0KCj4gK01PRFVMRV9MSUNFTlNFKCJHUEwgdjIiKTsK
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tZmQvbXQ2MzYwLmggYi9pbmNsdWRlL2xpbnV4
L21mZC9tdDYzNjAuaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uYzAz
ZTZkMQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9pbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaAo+
IEBAIC0wLDAgKzEsMjQwIEBACj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
ICovCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoYykgMjAxOSBNZWRpYVRlayBJbmMuCgpBbHNvIG91
dCBvZiBkYXRlLgoKPiArICovCgpPbmNlIGZpeGVkLCBwbGVhc2UgcmVzdWJtaXQgd2l0aCBteToK
CkZvciBteSBvd24gcmVmZXJlbmNlIChhcHBseSB0aGlzIGFzLWlzIHRvIHlvdXIgc2lnbi1vZmYg
YmxvY2spOgoKICBBY2tlZC1mb3ItTUZELWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8u
b3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2Fs
IExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZv
bGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
