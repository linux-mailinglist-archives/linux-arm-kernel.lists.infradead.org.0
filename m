Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D29F1A8C62
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODmiiX/yN+9urUraT3VPTHDQHpsr5OBfTuOmW2U+RQQ=; b=rwkV9W7GqA1XIR
	1tHkFKGipid2arLhH5PFJKsqnfaVOAByVxAmblcoddVA9tRg4NRj9tSPihbak6pENTf3caRLENTCJ
	/fwPD1EYU6f8keXIq0mt690qi4WT1qCoq3rCADyL+0Tnf8tw4pHeIux22Qvm1LrePBSOwn1ilZpZE
	1Yef7JebOupk7lpYAC/6igiv+V7bftYO60B38700l0rG9TsqVj3pSU2GJkAFAD0zf+BlMVzYrL+TN
	Um6GB9kvV1jqezfR90lghcQpn6LtXE5Bo4SKVAz5w5stPJNCv4wOikGmABio7+Ar39+nRGhUm7OPI
	/rFNmpP+FQhjkRqZ960g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOS85-0005km-Ki; Tue, 14 Apr 2020 20:25:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOS5F-0005gf-Kf
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 20:23:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id l14so1260238ljj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 13:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nftyzQSk2fEKUJDNudw4NfsmJdF93g+Dcfc3U2Gpatw=;
 b=d2O042p3UMR+y78JCY4hyzFSMK0uq6Ov9HkHyV9Kqk9/x4tHw8giXjpHrcyy9K/91r
 NwpWUDriyxVukBbzSp+a/YRU96XrxPjJnJzVZSMHj49CjXDBF6jSvcXMLVGycS1KzGas
 M95wHrHjvNA8WPnAGHL+2vvrX9mcjYaDpQ2IgqI0a+PPO/B9jxh+aB8WuoO0fqkQ0I1A
 PSBo23wKFzZO7Fm3tv1aG3B8lzK5PV0CphfRkxRurkAaOlsmV5OobxW0kb+FGwcVRAlz
 gOTlyctwo6Rr9oidtgCE0fu5w7rAtkZESRvECAGJVarbJ6WH5ZtRD9NU82cCvWUbap+S
 73zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nftyzQSk2fEKUJDNudw4NfsmJdF93g+Dcfc3U2Gpatw=;
 b=CeUOmtBb7dd3+bFZd+XLrHnfDg5Kgd/iPisXdROAVgQE8B3hkqHj9igaKjS38zwbcT
 aF1LqeZCh0+yBNYsmR0OmCv7BpC93whocIaGbkJgmYVwGszokzWaeI8yrWRaDJ0PW8EO
 8RrO+yNU2ev43wlhvHcuoqsJKffGjDeEdfFcxIqJMaJ0OmaMV+1KSBcMD1YVDq9/Mikp
 cYgu1oMhp57ZrNFe/2t5emP8umc7PwcBWg5VzEGr4IlTSeNhN8oRft3s4Vji2zavPOMD
 NdS05qyRc1djvMNdKaOXzXxki4xW510ZiOlXH3lvWa7WeZm5JfQQKlfPBTp2/FC5S9pj
 /ziw==
X-Gm-Message-State: AGi0Puad0UL+25KQDqfg7Nf9dmBWBjPfsNn8T1z1ieMez6vKAQQnJyVs
 Ea69Rl87N8sCfRB5X8BPgSvYV2/w
X-Google-Smtp-Source: APiQypLDIks8pKmGAVh3u5mAQntArQHMa9ewxINywmVJml1EW274oGfcsHEh4jPeHsTjVJV56LMUPQ==
X-Received: by 2002:a2e:9b56:: with SMTP id o22mr1106944ljj.270.1586895779255; 
 Tue, 14 Apr 2020 13:22:59 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id z7sm9746643ljc.17.2020.04.14.13.22.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 13:22:58 -0700 (PDT)
Subject: Re: [PATCH v6 07/14] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-8-thierry.reding@gmail.com>
 <8dc000fb-8867-cf8f-8204-a9e1e79a4811@gmail.com>
 <20200414143424.GG3593749@ulmo>
 <92eb73ba-73e4-f9f1-bb22-9b515e32cee6@gmail.com>
 <20200414171010.GB15932@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <9dd6ffe0-49bb-4847-e956-2f2e339c3a28@gmail.com>
Date: Tue, 14 Apr 2020 23:22:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414171010.GB15932@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_132317_136492_38B28AAF 
X-CRM114-Status: GOOD (  34.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTQuMDQuMjAyMCAyMDoxMCwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBPbiBUdWUsIEFw
ciAxNCwgMjAyMCBhdCAwNjoxODoyOVBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+
IDE0LjA0LjIwMjAgMTc6MzQsIFRoaWVycnkgUmVkaW5nINC/0LjRiNC10YI6Cj4+PiBPbiBUaHUs
IEFwciAwOSwgMjAyMCBhdCAwOToyNDozMVBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6
Cj4+Pj4gMDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPj4+PiAu
Li4KPj4+Pj4gK3N0YXRpYyBsb25nIHRlZ3JhMjEwX2Nsa19lbWNfcm91bmRfcmF0ZShzdHJ1Y3Qg
Y2xrX2h3ICpodywgdW5zaWduZWQgbG9uZyByYXRlLAo+Pj4+PiArCQkJCQl1bnNpZ25lZCBsb25n
ICpwcmF0ZSkKPj4+Pj4gK3sKPj4+Pj4gKwlzdHJ1Y3QgdGVncmEyMTBfY2xrX2VtYyAqZW1jID0g
dG9fdGVncmEyMTBfY2xrX2VtYyhodyk7Cj4+Pj4+ICsJc3RydWN0IHRlZ3JhMjEwX2Nsa19lbWNf
cHJvdmlkZXIgKnByb3ZpZGVyID0gZW1jLT5wcm92aWRlcjsKPj4+Pj4gKwl1bnNpZ25lZCBpbnQg
aTsKPj4+Pj4gKwo+Pj4+PiArCWlmICghcHJvdmlkZXIgfHwgIXByb3ZpZGVyLT5jb25maWdzIHx8
IHByb3ZpZGVyLT5udW1fY29uZmlncyA9PSAwKQo+Pj4+PiArCQlyZXR1cm4gY2xrX2h3X2dldF9y
YXRlKGh3KTsKPj4+Pgo+Pj4+IFRoaXMgc3RpbGwgbG9va3Mgd3JvbmcgdG8gbWUuIE5vYm9keSBz
aG91bGQgYmUgYWJsZSB0byBnZXQgRU1DIGNsb2NrCj4+Pj4gdW50aWwgcHJvdmlkZXIgaXMgcmVn
aXN0ZXJlZC4KPj4+Cj4+PiBUaGUgRU1DIGNsb2NrIGlzIG1vc3RseSBvcnRob2dvbmFsIHRvIHRo
ZSBwcm92aWRlci4gVGhlIHByb3ZpZGVyIHJlYWxseQo+Pj4gb25seSBhbGxvd3MgeW91IHRvIGFj
dHVhbGx5IGNoYW5nZSB0aGUgZnJlcXVlbmN5LiBUaGUgY2xvY2sgd2lsbCBzdGlsbAo+Pj4gcmVt
YWluIGV2ZW4gaWYgdGhlIHByb3ZpZGVyIGdvZXMgYXdheSwgaXQganVzdCB3aWxsIGxvb3NlIHRo
ZSBhYmlsaXR5IHRvCj4+PiBjaGFuZ2UgcmF0ZS4KPj4KPj4gSXQncyBub3Qgb25seSBhYm91dCBj
aGFuZ2luZyB0aGUgY2xvY2sgcmF0ZSwgYnV0IGFsc28gYWJvdXQgcm91bmRpbmcgdGhlCj4+IHJh
dGUgYW5kIGV0Yy4KPiAKPiBUaGUgY29kZSB3aWxsIGN1cnJlbnRseSBqdXN0IHJldHVybiB0aGUg
Y29uZmlndXJlZCByYXRlIHdoZW4gbm8gcHJvdmlkZXIKPiBpcyBhdmFpbGFibGUuIEl0J3MgZ29p
bmcgdG8gYWx3YXlzIHJvdW5kIHRvIHRoYXQgb25lIHJhdGUgYW5kIGl0IHdpbGwKPiByZWZ1c2Ug
dG8gc2V0IGFub3RoZXIgb25lLiBUaGUgRU1DIGNsb2NrIGlzIGJhc2ljYWxseSBnb2luZyB0byBm
dW5jdGlvbgo+IGFzIGEgZml4ZWQgY2xvY2sgd2hpbGUgbm8gcHJvdmlkZXIgaXMgYXR0YWNoZWQu
CgpZZXMsIEknbSB0ZWxsaW5nIHRoYXQgdGhpcyBzaG91bGQgYmUgYSB3cm9uZyB0aGluZyB0byBk
by4KCj4+IEJlc2lkZXMsIHlvdSB3b24ndCBiZSBhYmxlIHRvIGNoYW5nZSB0aGUgcmF0ZSB1bnRp
bCBwcm92aWRlciBpcwo+PiByZWdpc3RlcmVkLCB3aGljaCBtaWdodCBiZSBhIHF1aXRlIGJpZyBw
cm9ibGVtIGJ5IGl0c2VsZi4KPiAKPiBVbnRpbCB0aGUgcHJvdmlkZXIgaXMgcmVnaXN0ZXJlZCwg
dGhlcmUncyBqdXN0IG5vIHdheSB0byBjaGFuZ2UgdGhlCj4gcmF0ZS4gWW91IGFsd2F5cyBuZWVk
IHRvIHdyaXRlIE1DIGFuZCBFTUMgcmVnaXN0ZXJzIGluIG9yZGVyIHRvIGNoYW5nZQo+IHRoZSBy
YXRlLCBzbyB0cnlpbmcgdG8gY2hhbmdlIGl0IHdoZW4gdGhlIE1DL0VNQyBkcml2ZXJzIGFyZW4n
dAo+IGF2YWlsYWJsZSBpc24ndCBnb2luZyB0byB3b3JrLgoKQWdhaW4sIGNsa19nZXQoKSBzaG91
bGQgcmV0dXJuIC1FUFJPQkVfREVGRVIgdW50aWwgcHJvdmlkZXIgaXMgcmVnaXN0ZXJlZC4KCj4+
Pj4gVGhpcyBpcyB0cm91Ymxlc29tZSwgZXNwZWNpYWxseSBnaXZlbiB0aGF0IHlvdSdyZSBhbGxv
d2luZyB0aGUgRU1DCj4+Pj4gZHJpdmVyIHRvIGJlIGNvbXBpbGVkIGFzIGEgbG9hZGFibGUgbW9k
dWxlLiBGb3IgZXhhbXBsZSwgdGhpcyB3b24ndCB3b3JrCj4+Pj4gd2l0aCB0aGUgY3VycmVudCBB
Q1RNT04gZHJpdmVyIGJlY2F1c2UgaXQgYnVpbGRzIE9QUCB0YWJsZSBiYXNlZCBvbiB0aGUKPj4+
PiBjbGstcmF0ZSByb3VuZGluZyBkdXJpbmcgdGhlIGRyaXZlcidzIHByb2JlLCBzbyBpdCB3b24n
dCBiZSBhYmxlIHRvIGRvCj4+Pj4gaXQgcHJvcGVybHkgaWYgcHJvdmlkZXIgaXMgInRlbXBvcmFy
aWx5IiBtaXNzaW5nLgo+Pj4+Cj4+Pj4gLi4uIEkgdGhpbmsgdGhhdCBpbiBhIGxvbmdlciBydW4g
d2Ugc2hvdWxkIHN0b3AgbWFudWFsbHkgYnVpbGRpbmcgdGhlCj4+Pj4gQUNUTU9OJ3MgT1BQIHRh
YmxlIGFuZCBpbnN0ZWFkIGRlZmluZSBhIHByb3BlciBPUFAgdGFibGUgKHBlci1IVyBTcGVlZG8K
Pj4+PiBJRCwgd2l0aCB2b2x0YWdlcykgaW4gYSBkZXZpY2UtdHJlZS4gQnV0IHRoaXMgaXMganVz
dCBhIHZhZ3VlIHBsYW5zIGZvcgo+Pj4+IHRoZSBmdXR1cmUgZm9yIG5vdy4KPj4+Cj4+PiBUaGlz
IGNvZGUgb25seSBhcHBsaWVzIHRvIFRlZ3JhMjEwIGFuZCB3ZSBkb24ndCBjdXJyZW50bHkgc3Vw
cG9ydCBBQ1RNT04KPj4+IG9uIFRlZ3JhMjEwLiBJJ20gYWxzbyBub3Qgc3VyZSB3ZSdsbCBldmVy
IGRvIGJlY2F1c2UgdXNpbmcgaW50ZXJjb25uZWN0cwo+Pj4gdG8gZGVzY3JpYmUgcGF0aHMgdG8g
c3lzdGVtIG1lbW9yeSBhbmQgdGhlbiB1c2luZyBJQ0MgcmVxdWVzdHMgZm9yIGVhY2gKPj4+IGRy
aXZlciB0byBzdWJtaXQgbWVtb3J5IGJhbmR3aWR0aCByZXF1ZXN0cyBzZWVtcyBsaWtlIGEgYmV0
dGVyIHdheSBvZgo+Pj4gZGVhbGluZyB3aXRoIHRoaXMgcHJvYmxlbSB0aGFuIHVzaW5nIEFDVE1P
TiB0byBtb25pdG9yIGFjdGl2aXR5IGJlY2F1c2UKPj4+IHRoYXQgb25seSBhbGxvd3MgeW91IHRv
IHJlYWN0LCB3aGVyZWFzIHdlIHJlYWxseSB3YW50IHRvIGJlIGFibGUgdG8KPj4+IGFsbG9jYXRl
IG1lbW9yeSBiYW5kd2lkdGggdXBmcm9udC4KPj4KPj4gWW91IGFic29sdXRlbHkgaGF2ZSB0byBo
YXZlIHRoZSBBQ1RNT04gc3VwcG9ydCBpZiB5b3Ugd2FudCB0byBwcm92aWRlIGEKPj4gZ29vZCB1
c2VyIGV4cGVyaWVuY2UgYmVjYXVzZSBpbnRlcmNvbm5lY3Qgd29uJ3QgdGFrZSBpbnRvIGFjY291
bnQgdGhlCj4+IGR5bmFtaWMgQ1BVIG1lbW9yeSB0cmFmZmljLiBXaXRob3V0IEFDVE1PTiBzdXBw
b3J0IENQVSB3aWxsIHR1cm4gaW50byBhCj4+ICJ0dXJ0bGUiIGlmIG1lbW9yeSBydW5zIG9uIGEg
bG93ZXN0IGZyZXEsIHdoaWxlIENQVSBuZWVkcyB0aGUgaGlnaGVzdC4KPiAKPiBDYW4gd2Ugbm90
IGd1ZXNzIGEgYmFuZHdpZHRoIGJhc2VkIG9uIHRoZSBDUFUgZnJlcXVlbmN5PyBZZXMsIHRoYXQn
cwo+IHBlcmhhcHMgZ29pbmcgdG8gYmUgYW4gb3ZlcmVzdGltYXRpb24gaWYgdGhlIENQVSBkb2Vz
bid0IGFjdHVhbGx5IGFjY2Vzcwo+IG1lbW9yeSwgYnV0IHRoYXQncyBiZXR0ZXIgdGhhbiBub3Ro
aW5nIGF0IGFsbC4KCkNQVSBsb2FkIGRvZXNuJ3QgcmVmbGVjdCB0aGUgbWVtb3J5IHVzYWdlLgoK
MS4gQ1BVIGNvdWxkIGJlIDEwMCUgbG9hZGVkIHdoaWxlIG5vdCBtYWtpbmcgbWVtb3J5IGFjY2Vz
c2VzIGF0IGFsbAooMTAwJSBjYWNoZSBoaXQpLgoKMi4gQ1BVIGdvdmVybm9yIHNldHRpbmdzIGNv
dWxkIGJlIGNoYW5nZWQgYnkgdXNlciBhbmQgQ1BVICE9IG1lbW9yeS4KCkFDVE1PTiBpcyBzcGVj
aWZpY2FsbHkgZGVzaWduYXRlZCB0byBtZW1vcnkgc2NhbGluZyBiYXNlZCBvbiBhY3R1YWwKbWVt
b3J5IHVzYWdlIHN0YXRpc3RpY3MuIFQyMTAgQUNUTU9OIGlzIHNpbWlsYXIgdG8gVDEyNCwgaXQg
c2hvdWxkIGJlCmVhc3kgdG8gc3VwcG9ydC4KCj4gQWxzbywgYXQgdGhpcyBwb2ludCBJJ20gbGVz
cyB3b3JyaWVkIGFib3V0IHBvd2VyIGNvbnN1bXB0aW9uIHJhdGhlciB0aGFuCj4gbWFraW5nIFRl
Z3JhMjEwIGRldmljZXMgcGVyZm9ybSB1c2VmdWwgdGFza3MuIFllcywgZXZlbnR1YWxseSB3ZSds
bCB3YW50Cj4gdG8gZmluZS10dW5lIHBvd2VyIGNvbnN1bXB0aW9uLCBidXQgaXQncyBnb2luZyB0
byB0YWtlIGEgYml0IG9mIHdvcmsgdG8KPiBnZXQgdGhlcmUuIEluIHRoZSBtZWFudGltZSwgZ2l2
aW5nIHBlb3BsZSBhIHdheSB0byBzZXQgYW4gRU1DIGZyZXF1ZW5jeQo+IG90aGVyIHRoYW4gdGhh
dCBzZXQgb24gYm9vdCBpcyBnb2luZyB0byBtYWtlIHRoZW0gdmVyeSBoYXBweS4KPiAKPj4gU2Vj
b25kbHksIHRoZSBpbnRlcmNvbm5lY3QgY291bGQgdW5kZXJlc3RpbWF0ZSB0aGUgbWVtb3J5IEJX
IHJlcXVpcmVtZW50Cj4+IGJlY2F1c2UgbWVtb3J5IHBlcmZvcm1hbmNlIGRlcGVuZHMgcXVpdGUg
YSBsb3Qgb24gdGhlIG1lbW9yeS1hY2Nlc3NpbmcKPj4gcGF0dGVybnMgYW5kIGl0J3Mgbm90IHBv
c3NpYmxlIHRvIHByZWRpY3QgaXQgcHJvcGVybHkuIE90aGVyd2lzZSB5b3UgbWF5Cj4+IG5lZWQg
dG8gYWx3YXlzIG92ZXJlc3RpbWF0ZSB0aGUgQlcsIHdoaWNoIHBlcmhhcHMgaXMgbm90IHdoYXQg
YW55b25lCj4+IHdvdWxkIHJlYWxseSB3YW50IHRvIGhhdmUuCj4gCj4gT3ZlcmVzdGltYXRpbmcg
bWlnaHQgYmUgYSBnb29kIHN0YXJ0aW5nIHBvaW50LCB0aG91Z2guIEF0IHRoaXMgcG9pbnQgSSdt
Cj4gbW9zdGx5IGNvbmNlcm5lZCBhYm91dCBiZWluZyBhYmxlIHRvIGNoYW5nZSB0aGUgbWVtb3J5
IGZyZXF1ZW5jeSBhdCBhbGwKPiBiZWNhdXNlIG1hbnkgc3lzdGVtcyBhcmUgbW9zdGx5IHVudXNh
YmxlIGF0IHRoZSBib290IEVNQyBmcmVxdWVuY3kuCj4gCj4gTGlrZSBJIHNhaWQsIGlmIEFDVE1P
TiByZWFsbHkgZG9lcyBwcm92ZSB0byBiZSB1c2VmdWwgSSdtIGFsbCBmb3IgYWRkaW5nCj4gc3Vw
cG9ydCBvbiBUZWdyYTIxMCwgYnV0IEkgZG9uJ3QgdGhpbmsgdHJ5aW5nIHRvIGRvIGV2ZXJ5dGhp
bmcgYWxsIGF0Cj4gb25jZSBpcyBhIHZlcnkgZ29vZCBwbGFuLiBTbyBJJ20gdHJ5aW5nIHRvIGdl
dCB0aGVyZSBpbiBpbmNyZW1lbnRhbAo+IHN0ZXBzLgo+IAo+PiBJJ20gbm90IHN1cmUgd2h5IHlv
dSdyZSByZXNpc3RpbmcgdG8gZG8gaXQgYWxsIHByb3Blcmx5IGZyb20gdGhlIHN0YXJ0LAo+PiBp
dCBsb29rcyB0byBtZSB0aGF0IGl0IHdpbGwgdGFrZSB5b3UganVzdCBhIGZldyBsaW5lcyBvZiBj
b2RlIChsaWtlIGluIGEKPj4gY2FzZSBvZiB0aGUgVDIwLzMwIEVNQykuCj4gCj4gSSdtIG5vdCB0
cnlpbmcgdG8gcmVzaXN0IGFueXRoaW5nLiBJJ20ganVzdCBzYXlpbmcgdGhhdCBhbGwgb2YgdGhl
Cj4gaXNzdWVzIHRoYXQgeW91J3JlIGJyaW5naW5nIHVwIGFyZW4ndCBhbiBpbW1lZGlhdGUgY29u
Y2Vybi4KPiAKPiBNeSBtYWluIGNvbmNlcm5zIHJpZ2h0IG5vdyBhcmUgdG86IGEpIGFsbG93IHBl
b3BsZSB0byBjaGFuZ2UgdGhlIEVNQwo+IGZyZXF1ZW5jeSAoYW5kIGhvcGVmdWxseSBzb29uIGFs
c28gYWxsb3cgdGhlIEVNQyBmcmVxdWVuY3kgdG8gYmUgY2hhbmdlZAo+IGJhc2VkIG9uIGJhbmR3
aWR0aCBkZW1hbmRzIGJ5IG1lbW9yeSBjbGllbnQgZHJpdmVycykgYW5kIGIpIG5vdCBibG9hdAo+
IHRoZSBrZXJuZWwgbW9yZSB0aGFuIGl0IGhhcyB0byAod2hpbGUgbXkgY29uZmlndXJhdGlvbiBp
c24ndCB0d2Vha2VkLAo+IGl0J3MgcHJldHR5IHN0YW5kYXJkIGFuZCB0aGUgcmVzdWx0aW5nIGlt
YWdlIGlzIHJvdWdobHkgMjAgTWlCOyBhZGRpbmcKPiB0aGUgVGVncmEyMTAgRU1DIGRyaXZlciBh
ZGRzIGFub3RoZXIgNjQgS2lCKS4KPiAKPiBBbmQgaWYgd2UgcmVhbGx5IGRvIHdhbnQgdG8gYWRk
IEFDVE1PTiBzdXBwb3J0IGxhdGVyIG9uLCB5b3UgYWxyZWFkeQo+IHN1Z2dlc3RlZCBhIGJldHRl
ciB3YXkgb2YgbW92aW5nIGZvcndhcmQsIHNvIGl0IHNvdW5kcyB0byBtZSBsaWtlIHRoYXQKPiB3
b3VsZCBiZSBhIG5pY2UgaW5jcmVtZW50YWwgaW1wcm92ZW1lbnQsIGNlcnRhaW5seSBtdWNoIGJl
dHRlciB0aGFuCj4gYmxvYXRpbmcgdGhlIGtlcm5lbCBldmVuIGZ1cnRoZXIgYnkgcmVxdWlyaW5n
IHRoaXMgdG8gYmUgYnVpbHQtaW4gYW5kCj4gcHJldmVudGluZyBpdCBmcm9tIGJlaW5nIHVubG9h
ZGVkLgoKVXAgdG8geW91IHRoZW4gOikKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
