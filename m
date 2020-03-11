Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F109E180CCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 01:26:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCPZQcx524st/AXpcdcOZIMjPscbhkU0tA8fRk1jxWE=; b=bbj1smlKCQ7bC4
	IS0n6CmBjrzuGT4p9Hf73N6Rj08GYmW2ZOnQZguou5GTKZb0N69BLCEDd6acOcvrPVggyYklGN/ig
	27rFnaDw6vSKSQTt85TQ2tXLkfUOviqlez3VezodGcNLjMT7WRi6yJL437ju8BrMtHEyjQ4ccHcPH
	cWgP1/rWUWqnMDSoTzpqjOCGf9KkVY1plI9aL6oHZwwMRSQFslvJgGhKtrVK8VZFl7207Djp7INzO
	UbxcYecLPf0GqW7HUs66jq0VppSASK1bq8be8rTzEmOE4pHwKB7NnodhdH4nZKRqZr2nCKxPGU1Ze
	19T4H3w0etgkF5yzutMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBpCB-0002fc-Rd; Wed, 11 Mar 2020 00:25:59 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBpC4-0002f6-EL
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 00:25:54 +0000
Received: by mail-lj1-x243.google.com with SMTP id s13so343683ljm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 17:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=t3Ky3qCEUdrJfOedcPuL/BpKy3lmiK+jdAKVMPuMJK8=;
 b=tk4R9joYqGAUiaX3wTuehJ9y9j5Ieegddvc4VAGIFU+YYuREOUNdBE0vBPslsDBcjx
 m5OYKaXcAfbtvUBTBBTm+ks85pEW9eebbdGAMVtf9jJCjhYZCHbcyXfWgS/5A4rPj9xn
 f66KnV7TNnj8YszUsWUofktnm4EumccamP4G3F0BN2GLDEAG3c/37wIkb+7B9gSrC+Mp
 noG+7uUPeMCciCgAEVIS4dbqq+4EK9JGtKwqNaDMaSQ3k6lCKKy30N+rtMwiT4O2Bg7k
 LJQiyqeDWhaFNhxMIjiXo4EhOjc+g4WUSH+mWhWLTQrrwzqw8v3cHPXSW8n/F36HE8aa
 8hcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t3Ky3qCEUdrJfOedcPuL/BpKy3lmiK+jdAKVMPuMJK8=;
 b=MMvL6QPWRa2H53s3c9TIzx0fGqwPHdqYmMpmfyRgyOoCK1WHhWLntw0/14OmxqzyBB
 9c+UHRns8bd/vlPkD0gO5Xq6ADWubDORgfXGYE5ZBcKR7A9QrIjswnP5BMeuQYGRpp1X
 rfJfBD+HWnw8yWmSH4mM+QbCScx75/03jEX8AiI7bS4A5MSo6TMp37zIOJHd6ztyfkzt
 oMNrrCurAXJ4eZDvrq5oxgLk0S2rTVodreV32ooBDnxd/hGjrWthjRxKL4dEYSO9Rtqw
 PfrM8g1Wlj1PKoMEYuDTqYuV1paom3b904NeUiedweZCOJM/rfLdrjoY3HnXXhJNayeS
 2TYQ==
X-Gm-Message-State: ANhLgQ2vpwfKCS8+ay4xzM3pAYlrCPjM62one2wC9/Z1pSNCKVVR/UZj
 QXn1zQf489+K7g5f9a6zj6rraNS+
X-Google-Smtp-Source: ADFU+vtJb0j7MalqOt+Z3WwOaodj9H9IYdfhO6LBUh7bBXVYdciVxamfoWd9b8sUn8ri29DON2hAlQ==
X-Received: by 2002:a2e:8e6f:: with SMTP id t15mr450294ljk.132.1583886349997; 
 Tue, 10 Mar 2020 17:25:49 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id y24sm28680496lfg.63.2020.03.10.17.25.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 17:25:49 -0700 (PDT)
Subject: Re: [PATCH v5 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-6-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <72fdd9f9-6100-d413-aae6-4c05922d7571@gmail.com>
Date: Wed, 11 Mar 2020 03:25:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-6-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_172552_508217_6E62952A 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDMuMjAyMCAxODoyMCwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBKb3Nl
cGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAKPiBUaGlzIGlzIHRoZSBpbml0aWFsIHBhdGNo
IGZvciBUZWdyYTIxMCBFTUMgZnJlcXVlbmN5IHNjYWxpbmcuIEl0IGhhcyB0aGUKPiBjb2RlIHRv
IHByb2dyYW0gdmFyaW91cyBhc3BlY3RzIG9mIHRoZSBFTUMgdGhhdCBhcmUgc3RhbmRhcmRpemVk
LCBidXQgaXQKPiBkb2VzIG5vdCB5ZXQgaW5jbHVkZSB0aGUgc3BlY2lmaWMgcHJvZ3JhbW1pbmcg
c2VxdWVuY2UgbmVlZGVkIGZvciBjbG9jawo+IHNjYWxpbmcuCj4gCj4gVGhlIGRyaXZlciBpcyBk
ZXNpZ25lZCB0byBzdXBwb3J0IExQRERSNCBTRFJBTS4gRGV2aWNlcyB0aGF0IHVzZSBMUEREUjQK
PiBuZWVkIHRvIHBlcmZvcm0gdHJhaW5pbmcgb2YgdGhlIFJBTSBiZWZvcmUgaXQgY2FuIGJlIHVz
ZWQuIEZpcm13YXJlIHdpbGwKPiBwZXJmb3JtIHRoaXMgdHJhaW5pbmcgZHVyaW5nIGVhcmx5IGJv
b3QgYW5kIHBhc3MgYSB0YWJsZSBvZiBzdXBwb3J0ZWQKPiBmcmVxdWVuY2llcyB0byB0aGUga2Vy
bmVsIHZpYSBkZXZpY2UgdHJlZS4KPiAKPiBGb3IgdGhlIGZyZXF1ZW5jaWVzIGFib3ZlIDgwMCBN
SHosIHBlcmlvZGljIHJldHJhaW5pbmcgaXMgbmVlZGVkIHRvCj4gY29tcGVuc2F0ZSBmb3IgY2hh
bmdlcyBpbiB0aW1pbmcuIFRoaXMgcGVyaW9kaWMgdHJhaW5pbmcgd2lsbCBoYXZlIHRvIGJlCj4g
cGVyZm9ybWVkIHVudGlsIHRoZSBmcmVxdWVuY3kgZHJvcHMgYmFjayB0byBvciBiZWxvdyA4MDAg
TUh6Lgo+IAo+IFRoaXMgZHJpdmVyIHByb3ZpZGVzIGhlbHBlcnMgdXNlZCBkdXJpbmcgdGhpcyBy
dW50aW1lIHJldHJhaW5pbmcgdGhhdAo+IHdpbGwgYmUgdXNlZCBieSB0aGUgc2VxdWVuY2Ugc3Bl
Y2lmaWMgY29kZSBpbiBhIGZvbGxvdy11cCBwYXRjaC4KPiAKPiBCYXNlZCBvbiB3b3JrIGJ5IFBl
dGVyIERlIFNjaHJpanZlciA8cGRlc2NocmlqdmVyQG52aWRpYS5jb20+Lgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEpvc2VwaCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFRo
aWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2NToK
PiAtIG1ham9yIHJld29yayBhbmQgY2xlYW51cAo+IAouLi4KCj4gICNpbmNsdWRlICJtYy5oIgo+
ICAKPiArI2RlZmluZSBEVkZTX0ZHQ0dfSElHSF9TUEVFRF9USFJFU0hPTEQJCQkJMTAwMAo+ICsj
ZGVmaW5lIElPQlJJQ0tfRENDX1RIUkVTSE9MRAkJCQkJMjQwMAo+ICsjZGVmaW5lIERWRlNfRkdD
R19NSURfU1BFRURfVEhSRVNIT0xECQkJCTYwMAo+ICsKPiArI2RlZmluZSBFTUNfU1RBVFVTX1VQ
REFURV9USU1FT1VUCQkJCTEwMDAKPiArCj4gKyNkZWZpbmUgTUNfRU1FTV9BRFJfQ0ZHCQkJCQkJ
MHg1NAo+ICsjZGVmaW5lIE1DX0VNRU1fQVJCX0NGRwkJCQkJCTB4OTAKPiArI2RlZmluZSBNQ19F
TUVNX0FSQl9PVVRTVEFORElOR19SRVEJCQkJMHg5NAo+ICsjZGVmaW5lIE1DX0VNRU1fQVJCX1RJ
TUlOR19SQ0QJCQkJCTB4OTgKPiArI2RlZmluZSBNQ19FTUVNX0FSQl9USU1JTkdfUlAJCQkJCTB4
OWMKPiArI2RlZmluZSBNQ19FTUVNX0FSQl9USU1JTkdfUkMJCQkJCTB4YTAKPiArI2RlZmluZSBN
Q19FTUVNX0FSQl9USU1JTkdfUkFTCQkJCQkweGE0Cj4gKyNkZWZpbmUgTUNfRU1FTV9BUkJfVElN
SU5HX0ZBVwkJCQkJMHhhOAo+ICsjZGVmaW5lIE1DX0VNRU1fQVJCX1RJTUlOR19SUkQJCQkJCTB4
YWMKPiArI2RlZmluZSBNQ19FTUVNX0FSQl9USU1JTkdfUkFQMlBSRQkJCQkweGIwCj4gKyNkZWZp
bmUgTUNfRU1FTV9BUkJfVElNSU5HX1dBUDJQUkUJCQkJMHhiNAo+ICsjZGVmaW5lIE1DX0VNRU1f
QVJCX1RJTUlOR19SMlIJCQkJCTB4YjgKPiArI2RlZmluZSBNQ19FTUVNX0FSQl9USU1JTkdfVzJX
CQkJCQkweGJjCj4gKyNkZWZpbmUgTUNfRU1FTV9BUkJfVElNSU5HX1IyVwkJCQkJMHhjMAo+ICsj
ZGVmaW5lIE1DX0VNRU1fQVJCX1RJTUlOR19XMlIJCQkJCTB4YzQKPiArI2RlZmluZSBNQ19FTUVN
X0FSQl9NSVNDMgkJCQkJMHhjOAo+ICsjZGVmaW5lIE1DX0VNRU1fQVJCX0RBX1RVUk5TCQkJCQkw
eGQwCj4gKyNkZWZpbmUgTUNfRU1FTV9BUkJfREFfQ09WRVJTCQkJCQkweGQ0Cj4gKyNkZWZpbmUg
TUNfRU1FTV9BUkJfTUlTQzAJCQkJCTB4ZDgKPiArI2RlZmluZSBNQ19FTUVNX0FSQl9NSVNDMQkJ
CQkJMHhkYwo+ICsjZGVmaW5lIE1DX0VNRU1fQVJCX1JJTkcxX1RIUk9UVExFCQkJCTB4ZTAKCkFs
bCB0aGVzZSByZWdpc3RlcnMgYXJlIGFscmVhZHkgZGVmaW5lZCBpbiBtYy5oLCBwbGVhc2UgZG9u
J3QgcmUtZGVmaW5lCnRoZW0uCgo+ICsjZGVmaW5lIE1DX0xBVEVOQ1lfQUxMT1dBTkNFX0FWUENf
MAkJCQkweDJlNAo+ICsjZGVmaW5lIE1DX0xBVEVOQ1lfQUxMT1dBTkNFX0hDXzAJCQkJMHgzMTAK
PiArI2RlZmluZSBNQ19MQVRFTkNZX0FMTE9XQU5DRV9IQ18xCQkJCTB4MzE0Cj4gKyNkZWZpbmUg
TUNfTEFURU5DWV9BTExPV0FOQ0VfTVBDT1JFXzAJCQkJMHgzMjAKPiArI2RlZmluZSBNQ19MQVRF
TkNZX0FMTE9XQU5DRV9OVkVOQ18wCQkJCTB4MzI4Cj4gKyNkZWZpbmUgTUNfTEFURU5DWV9BTExP
V0FOQ0VfUFBDU18wCQkJCTB4MzQ0Cj4gKyNkZWZpbmUgTUNfTEFURU5DWV9BTExPV0FOQ0VfUFBD
U18xCQkJCTB4MzQ4Cj4gKyNkZWZpbmUgTUNfTEFURU5DWV9BTExPV0FOQ0VfSVNQMl8wCQkJCTB4
MzcwCj4gKyNkZWZpbmUgTUNfTEFURU5DWV9BTExPV0FOQ0VfSVNQMl8xCQkJCTB4Mzc0Cj4gKyNk
ZWZpbmUgTUNfTEFURU5DWV9BTExPV0FOQ0VfWFVTQl8wCQkJCTB4MzdjCj4gKyNkZWZpbmUgTUNf
TEFURU5DWV9BTExPV0FOQ0VfWFVTQl8xCQkJCTB4MzgwCj4gKyNkZWZpbmUgTUNfTEFURU5DWV9B
TExPV0FOQ0VfVFNFQ18wCQkJCTB4MzkwCj4gKyNkZWZpbmUgTUNfTEFURU5DWV9BTExPV0FOQ0Vf
VklDXzAJCQkJMHgzOTQKPiArI2RlZmluZSBNQ19MQVRFTkNZX0FMTE9XQU5DRV9WSTJfMAkJCQkw
eDM5OAo+ICsjZGVmaW5lIE1DX0xBVEVOQ1lfQUxMT1dBTkNFX0dQVV8wCQkJCTB4M2FjCj4gKyNk
ZWZpbmUgTUNfTEFURU5DWV9BTExPV0FOQ0VfU0RNTUNBXzAJCQkJMHgzYjgKPiArI2RlZmluZSBN
Q19MQVRFTkNZX0FMTE9XQU5DRV9TRE1NQ0FBXzAJCQkJMHgzYmMKPiArI2RlZmluZSBNQ19MQVRF
TkNZX0FMTE9XQU5DRV9TRE1NQ18wCQkJCTB4M2MwCj4gKyNkZWZpbmUgTUNfTEFURU5DWV9BTExP
V0FOQ0VfU0RNTUNBQl8wCQkJCTB4M2M0Cj4gKyNkZWZpbmUgTUNfTEFURU5DWV9BTExPV0FOQ0Vf
R1BVMl8wCQkJCTB4M2U4Cj4gKyNkZWZpbmUgTUNfTEFURU5DWV9BTExPV0FOQ0VfTlZERUNfMAkJ
CQkweDNkOAo+ICsjZGVmaW5lIE1DX01MTF9NUENPUkVSX1BUU0FfUkFURQkJCQkweDQ0Ywo+ICsj
ZGVmaW5lIE1DX0ZUT1BfUFRTQV9SQVRFCQkJCQkweDUwYwo+ICsjZGVmaW5lIE1DX0VNRU1fQVJC
X1RJTUlOR19SRkNQQgkJCQkweDZjMAo+ICsjZGVmaW5lIE1DX0VNRU1fQVJCX1RJTUlOR19DQ0RN
VwkJCQkweDZjNAo+ICsjZGVmaW5lIE1DX0VNRU1fQVJCX1JFRlBCX0hQX0NUUkwJCQkJMHg2ZjAK
PiArI2RlZmluZSBNQ19FTUVNX0FSQl9SRUZQQl9CQU5LX0NUUkwJCQkJMHg2ZjQKPiArI2RlZmlu
ZSBNQ19QVFNBX0dSQU5UX0RFQ1JFTUVOVAkJCQkJMHg5NjAKPiArI2RlZmluZSBNQ19FTUVNX0FS
Ql9ESFlTVF9DVFJMCQkJCQkweGJjYwo+ICsjZGVmaW5lIE1DX0VNRU1fQVJCX0RIWVNUX1RJTUVP
VVRfVVRJTF8wCQkJMHhiZDAKPiArI2RlZmluZSBNQ19FTUVNX0FSQl9ESFlTVF9USU1FT1VUX1VU
SUxfMQkJCTB4YmQ0Cj4gKyNkZWZpbmUgTUNfRU1FTV9BUkJfREhZU1RfVElNRU9VVF9VVElMXzIJ
CQkweGJkOAo+ICsjZGVmaW5lIE1DX0VNRU1fQVJCX0RIWVNUX1RJTUVPVVRfVVRJTF8zCQkJMHhi
ZGMKPiArI2RlZmluZSBNQ19FTUVNX0FSQl9ESFlTVF9USU1FT1VUX1VUSUxfNAkJCTB4YmUwCj4g
KyNkZWZpbmUgTUNfRU1FTV9BUkJfREhZU1RfVElNRU9VVF9VVElMXzUJCQkweGJlNAo+ICsjZGVm
aW5lIE1DX0VNRU1fQVJCX0RIWVNUX1RJTUVPVVRfVVRJTF82CQkJMHhiZTgKPiArI2RlZmluZSBN
Q19FTUVNX0FSQl9ESFlTVF9USU1FT1VUX1VUSUxfNwkJCTB4YmVjLi4uCgpTZWNvbmRseSwgbG9v
a3MgbGlrZSBpdCBhbGwgaXMgdW51c2VkLCBoZW5jZSBqdXN0IHJlbW92ZSBpdC4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
