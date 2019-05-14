Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA121CD69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5m+ceIw6VgcL9LZGD+L4vtJvOeVo+BVDlnUweHLYFc=; b=eWHED1rAkHY5P8
	6lbCFuJbqtEbX4oXzpPmsjx2MqXnYh4wSFj+/5csjtxEt9ewC6ektNdX+6hzIGsTbpGwQAuSrq/2Q
	r3GZwjIRHjysX/cyGSJfMrprE9+U7PMW7zpSTLnTTQX5Wb9P8fLd3fvQzQywBtafrHs3HfB/kDErF
	ftAFtk4nunMqwJP2zFmhjNTv9tE90618iX4RmnOUtdRd8E2aLUqW3rxCT7bYQgKgsqw/PNWzamC6J
	7d8TxuX4QCcE6nfqafdYI43eMcX3+OgjjOgAO6CbFIbf5x7nWpwijN6iqlL2CU/nahUoQTmVIlZPl
	t6eJHjhtmgCRRRvVzxOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQarb-0007oD-GM; Tue, 14 May 2019 17:05:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQarI-0007nJ-Hr
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:04:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id g3so9460053pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 10:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6qyTbtX00jJkaKvcEeyt6DaUNQBAW+C2V91ibbK+07c=;
 b=pIzl+dGWEVetUKdSSf7V8WX/1HmmaLI20y97fW7tkjVbcbGmyoglkXhhIwdeBBMDvY
 kb4oiDQARgWhe1X4gg1kYu29m4WAwz08XVffD+jvZRSPiHH2LLTjeNCrFM6derOsflxT
 KH9jzvQeTphhbz2T2FHJ8XivQGdg1oLZlHTu4RJTyLIwDBFvTzIZzEyZMZyHrMufmu+8
 JFPeV1x9c/C3VwwuploSx7V7cLVRGIxyT/9k+dR93LB5iEX7IRLM4zf1in7IhOu+xmTF
 AXkXWWfJnmgpeQDrhkni5+BWnWG6dj2aIqzA03WMdPNEeyVNumqVzykJSwTja41SgjCz
 gJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6qyTbtX00jJkaKvcEeyt6DaUNQBAW+C2V91ibbK+07c=;
 b=KQ6YDhTuP9f72pLOMXUBfi+FMlvsFTSyFWHtmzAGjuiABwqkdMA1RMoIw/pKlCdJ2D
 C6+KUp8MaaDl5+te5OjSbKK28cAJcSUgljEWgyoki4Td4F8B/fVrgMSahiD280bwA5qG
 iasCtupaSqfXW4Tw46+qjoqZ+smZrEiSKlJHYCRiP6pWXoQlbYtbtbUqDX0u6rebZtEl
 J1tPsdBQBwDcB1PnbwP6C7MC9t9ulE5/AHFKzL5kWJpCSfsJbUwV/2r13Z4dESPTAb9z
 +OthPPX7C2WExQ6t6UEnmJnH4hl8S9fAspPsdy/zw56LXu2IKZnqwVWdGf6VqsrCpA7W
 /QdQ==
X-Gm-Message-State: APjAAAVq0wgmRpr16sfUgTzZ6gpXZ/0a5wmhTZVULETekuGb9k9LztB+
 /9ao0KYUW0Q6NTPKHirpSBFveJ8w
X-Google-Smtp-Source: APXvYqx+9/SFt10AYj6o9OFmKb078xpVvM1S13Kgzeo+rpmpvm+BPzMHfBsubEYFLjxiLyH1vvbOlQ==
X-Received: by 2002:a63:1b65:: with SMTP id b37mr39525909pgm.408.1557853494921; 
 Tue, 14 May 2019 10:04:54 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id q27sm14998201pfg.49.2019.05.14.10.04.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 10:04:54 -0700 (PDT)
Subject: Re: [PATCH V3 4/8] memory: tegra: Add Tegra210 EMC clock driver
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-5-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <74fad66b-a6e9-ffc9-c1c9-e88b841e9209@gmail.com>
Date: Tue, 14 May 2019 20:04:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510084719.18902-5-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_100456_619258_B9C4957B 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDUuMjAxOSAxMTo0NywgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gVGhpcyBpcyB0aGUgaW5p
dGlhbCBwYXRjaCBmb3IgVGVncmEyMTAgRU1DIGNsb2NrIGRyaXZlciwgd2hpY2ggZG9lc24ndAo+
IGluY2x1ZGUgdGhlIHN1cHBvcnQgY29kZSBhbmQgZGV0YWlsIHNlcXVlbmNlIGZvciBjbG9jayBz
Y2FsaW5nIHlldC4KPiAKPiBUaGUgZHJpdmVyIGlzIGRlc2lnbmVkIHRvIHN1cHBvcnQgTFBERFI0
IFNEUkFNLiBCZWNhdXNlIG9mIHRoZSBMUEREUjQKPiBkZXZpY2VzIG5lZWQgdG8gZG8gaW5pdGlh
bCB0aW1lIHRyYWluaW5nIGJlZm9yZSBpdCBjYW4gYmUgdXNlZCwgdGhlCj4gZmlybXdhcmUgd2ls
bCBoZWxwIHRvIGRvIHRoYXQgYXQgZWFybHkgYm9vdCBzdGFnZS4gVGhlbiwgdGhlIHRyYWluZWQK
PiB0YWJsZSBmb3IgdGhlIHJhdGVzIHdlIHN1cHBvcnQgd2lsbCBwYXNzIHRvIHRoZSBrZXJuZWwg
dmlhIERULiBTbyB0aGUKPiBkcml2ZXIgY2FuIGdldCB0aGUgdHJhaW5lZCB0YWJsZSBmb3IgY2xv
Y2sgc2NhbGluZyBzdXBwb3J0Lgo+IAo+IEZvciB0aGUgaGlnaGVyIHJhdGUgc3VwcG9ydCAoYWJv
dmUgODAwTUh6KSwgdGhlIHBlcmlvZGljIHRyYWluaW5nIGlzCj4gbmVlZGVkIGZvciB0aGUgdGlt
aW5nIGNvbXBlbnNhdGlvbi4gU28gYmFzaWNhbGx5LCB0d28gbWV0aG9kb2xvZ2llcyBmb3IKPiBj
bG9jayBzY2FsaW5nIGFyZSBzdXBwb3J0ZWQsIG9uZSBpcyBmb2xsb3dpbmcgdGhlIGNsb2NrIGNo
YW5naW5nCj4gc2VxdWVuY2UgdG8gdXBkYXRlIHRoZSBFTUMgdGFibGUgdG8gRU1DIHJlZ2lzdGVy
cyBhbmQgYW5vdGhlciBpcyBpZiB0aGUKPiByYXRlIG5lZWRzIHBlcmlvZGljIHRyYWluaW5nLCB0
aGVuIHdlIHdpbGwgc3RhcnQgYSB0aW1lciB0byBkbyB0aGF0Cj4gcGVyaW9kaWNhbGx5IHVudGls
IGl0IHNjYWxlcyB0byB0aGUgbG93ZXIgcmF0ZS4KPiAKPiBCYXNlZCBvbiB0aGUgd29yayBvZiBQ
ZXRlciBEZSBTY2hyaWp2ZXIgPHBkZXNjaHJpanZlckBudmlkaWEuY29tPi4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBKb3NlcGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAtLS0KCltzbmlwXQoKPiAr
c3RhdGljIGludCB0ZWdyYTIxMF9lbWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiArewo+ICsJaW50IGk7Cj4gKwl1bnNpZ25lZCBsb25nIHRhYmxlX3JhdGU7Cj4gKwl1bnNp
Z25lZCBsb25nIGN1cnJlbnRfcmF0ZTsKPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnA7Cj4gKwlz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICptYzsKPiArCXN0cnVjdCB0ZWdyYV9lbWMgKmVtYzsKPiAr
CXN0cnVjdCBjbGtfaW5pdF9kYXRhIGluaXQ7Cj4gKwlzdHJ1Y3QgY2xrICpjbGs7Cj4gKwlzdHJ1
Y3QgcmVzb3VyY2UgKnIsIHJlczsKPiArCXZvaWQgKnRhYmxlX2FkZHI7Cj4gKwo+ICsJZW1jID0g
ZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqZW1jKSwgR0ZQX0tFUk5FTCk7Cj4gKwlp
ZiAoIWVtYykKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwlucCA9IG9mX3BhcnNlX3BoYW5k
bGUocGRldi0+ZGV2Lm9mX25vZGUsICJudmlkaWEsbWVtb3J5LWNvbnRyb2xsZXIiLCAwKTsKPiAr
CWlmICghbnApIHsKPiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJjb3VsZCBub3QgZ2V0IG1lbW9y
eSBjb250cm9sbGVyXG4iKTsKPiArCQlyZXR1cm4gLUVOT0VOVDsKPiArCX0KPiArCj4gKwltYyA9
IG9mX2ZpbmRfZGV2aWNlX2J5X25vZGUobnApOwo+ICsJb2Zfbm9kZV9wdXQobnApOwo+ICsJaWYg
KCFtYykKPiArCQlyZXR1cm4gLUVOT0VOVDsKPiArCj4gKwllbWMtPm1jID0gcGxhdGZvcm1fZ2V0
X2RydmRhdGEobWMpOwo+ICsJaWYgKCFlbWMtPm1jKQo+ICsJCXJldHVybiAtRVBST0JFX0RFRkVS
Owo+ICsKPiArCWVtYy0+cmFtX2NvZGUgPSB0ZWdyYV9yZWFkX3JhbV9jb2RlKCk7CgplbWMtPnJh
bV9jb2RlIGlzbid0IHVzZWQgYW55d2hlcmUgaW4gdGhlIGNvZGUuCgpJIGhhdmVuJ3QgY2hlY2tl
ZCBvdGhlciBmaWVsZHMuIFBsZWFzZSByZW1vdmUgZXZlcnl0aGluZyB0aGF0IGlzIHVudXNlZC4K
Cj4gKwlyID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsK
PiArCWVtYy0+ZW1jX2Jhc2VbUkVHX0VNQ10gPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYt
PmRldiwgcik7Cj4gKwlyID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0Vf
TUVNLCAxKTsKPiArCWVtYy0+ZW1jX2Jhc2VbUkVHX0VNQzBdID0gZGV2bV9pb3JlbWFwX3Jlc291
cmNlKCZwZGV2LT5kZXYsIHIpOwo+ICsJciA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJ
T1JFU09VUkNFX01FTSwgMik7Cj4gKwllbWMtPmVtY19iYXNlW1JFR19FTUMxXSA9IGRldm1faW9y
ZW1hcF9yZXNvdXJjZSgmcGRldi0+ZGV2LCByKTsKClVzZSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBf
cmVzb3VyY2UoKS4KCj4gKwlmb3IgKGkgPSAwOyBpIDwgVEVHUkFfRU1DX1NSQ19DT1VOVDsgaSsr
KSB7Cj4gKwkJZW1jX3NyY1tpXSA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LAo+ICsJCQkJCQll
bWNfc3JjX25hbWVzW2ldKTsKPiArCQlpZiAoSVNfRVJSKGVtY19zcmNbaV0pKSB7Cj4gKwkJCWRl
dl9lcnIoJnBkZXYtPmRldiwgIkNhbiBub3QgZmluZCBFTUMgc291cmNlIGNsb2NrXG4iKTsKPiAr
CQkJcmV0dXJuIC1FTk9EQVRBOwo+ICsJCX0KPiArCX0KPiArCj4gKwlucCA9IG9mX3BhcnNlX3Bo
YW5kbGUocGRldi0+ZGV2Lm9mX25vZGUsICJtZW1vcnktcmVnaW9uIiwgMCk7Cj4gKwlpZiAoIW5w
KSB7Cj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LCAiY291bGQgbm90IGZpbmQgRU1DIHRhYmxlXG4i
KTsKPiArCQlnb3RvIGVtY19jbGtfcmVnaXN0ZXI7Cj4gKwl9Cj4gKwo+ICsJaWYgKCFvZl9kZXZp
Y2VfaXNfY29tcGF0aWJsZShucCwgIm52aWRpYSx0ZWdyYTIxMC1lbWMtdGFibGUiKSB8fAo+ICsJ
ICAgICFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKG5wKSkgewo+ICsJCWRldl9lcnIoJnBkZXYtPmRl
diwgIkVNQyB0YWJsZSBpcyBpbnZhbGlkXG4iKTsKPiArCQlnb3RvIGVtY19jbGtfcmVnaXN0ZXI7
Cj4gKwl9Cj4gKwo+ICsJb2ZfYWRkcmVzc190b19yZXNvdXJjZShucCwgMCwgJnJlcyk7Cj4gKwl0
YWJsZV9hZGRyID0gbWVtcmVtYXAocmVzLnN0YXJ0LCByZXNvdXJjZV9zaXplKCZyZXMpLCBNRU1S
RU1BUF9XQik7Cj4gKwlvZl9ub2RlX3B1dChucCk7Cj4gKwlpZiAoIXRhYmxlX2FkZHIpIHsKPiAr
CQlkZXZfZXJyKCZwZGV2LT5kZXYsICJjb3VsZCBub3QgbWFwIEVNQyB0YWJsZVxuIik7Cj4gKwkJ
Z290byBlbWNfY2xrX3JlZ2lzdGVyOwo+ICsJfQo+ICsJZW1jLT5lbWNfdGFibGUgPSAoc3RydWN0
IGVtY190YWJsZSAqKXRhYmxlX2FkZHI7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IFRFR1JBX0VN
Q19NQVhfRlJFUVM7IGkrKykKPiArCQlpZiAoZW1jLT5lbWNfdGFibGVbaV0ucmV2ICE9IDApCj4g
KwkJCWVtYy0+ZW1jX3RhYmxlX3NpemUrKzsKPiArCQllbHNlCj4gKwkJCWJyZWFrOwo+ICsKPiAr
CS8qIEluaXQgRU1DIHJhdGUgc3RhdGlzdGljIGRhdGEgKi8KPiArCWVtY19zdGF0cy5jbGtjaGFu
Z2VfY291bnQgPSAwOwo+ICsJc3Bpbl9sb2NrX2luaXQoJmVtY19zdGF0cy5zcGlubG9jayk7Cj4g
KwllbWNfc3RhdHMubGFzdF91cGRhdGUgPSBnZXRfamlmZmllc182NCgpOwo+ICsJZW1jX3N0YXRz
Lmxhc3Rfc2VsID0gVEVHUkFfRU1DX01BWF9GUkVRUzsKPiArCj4gKwkvKiBDaGVjayB0aGUgc3Vw
cG9ydGVkIHNlcXVlbmNlICovCj4gKwl3aGlsZSAoc2VxLT50YWJsZV9yZXYpIHsKPiArCQlpZiAo
c2VxLT50YWJsZV9yZXYgPT0gZW1jLT5lbWNfdGFibGVbMF0ucmV2KQo+ICsJCQlicmVhazsKPiAr
CQlzZXErKzsKPiArCX0KPiArCWlmICghc2VxLT5zZXRfY2xvY2spIHsKPiArCQlzZXEgPSBOVUxM
Owo+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgIkludmFsaWQgRU1DIHNlcXVlbmNlIGZvciB0YWJs
ZSBSZXYuICVkXG4iLAo+ICsJCQllbWMtPmVtY190YWJsZVswXS5yZXYpOwo+ICsJCWdvdG8gZW1j
X2Nsa19yZWdpc3RlcjsKCldoeSBkbyB5b3Ugd2FudCB0byByZWdpc3RlciBFTUMgY2xvY2sgaWYg
c29tZXRoaW5nIGZhaWxzPyBLTVNHIHdpbGwgYmUKZmxvb2RlZCB3aXRoIGVycm9ycyBjb21pbmcg
ZnJvbSBjbGtfc2V0X3JhdGUuCgo+ICsJfQo+ICsKPiArCWVtY19jbGtfc2VsID0gZGV2bV9rY2Fs
bG9jKCZwZGV2LT5kZXYsCj4gKwkJCQkgICBlbWMtPmVtY190YWJsZV9zaXplLAo+ICsJCQkJICAg
c2l6ZW9mKHN0cnVjdCBlbWNfc2VsKSwKPiArCQkJCSAgIEdGUF9LRVJORUwpOwo+ICsKPiArCS8q
IGNhbGN1bGF0ZSB0aGUgcmF0ZSBmcm9tIHNvdXJjZSBjbG9jayAqLwo+ICsJY3VycmVudF9yYXRl
ID0gZW1jX2dldF9zcmNfY2xrX3JhdGUoKSAvIDEwMDA7Cj4gKwo+ICsJLyogdmFsaWRhdGUgdGhl
IHRhYmxlICovCgpQbGVhc2UgYmUgY29uc2lzdGVudCBhbmQgc3RhcnQgYWxsIG9mIHRoZSBvbmUt
bGluZSBjb21tZW50cyB3aXRoIGEKbG93ZXJjYXNlIGxldHRlci4KCi0tIApEbWl0cnkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
