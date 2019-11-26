Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EAA10A239
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 17:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7u8v8a3uZbaIERQA/562E74NHAFEpO1OTw9qzXbNPAU=; b=WUQHQdk5HNRw+Z1RwmX3MFWoY
	eC4sJ7ALrG+a6ZndW1uwM5Xj8xm0RdzWYv1lwGuhDsu0ohwRmmKSDgGn1Rc/Yeag8mxm024EXPQtC
	saiYofYzOkAHlBoA5c0zmiwrukCQpc5Bl45lam01i1yBWsVS5MdcK7pOYta+Suar5WTj+QUW5S2ux
	qR/FEQPstVaNYpT1fSVD68+Oh6wE+qUASO2gMotMxgDNT0SxYTa9ZgbG0PwZcZcjjcBGNTn+oO42M
	hrOgTKl+LVC1g88+mySuk5OoH983QHRoI7kC5fYuPA1LFFDZAwxZ/VAa/0/8B8Ur0y4YW+Iz62VAA
	yF3xssKVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZdoB-0007D4-Em; Tue, 26 Nov 2019 16:35:23 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZdo2-0007C0-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 16:35:16 +0000
Received: by mail-qk1-x730.google.com with SMTP id v23so8816993qkg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 08:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rl+jKvoB1u0XRSwDs/U2JZrRhzMsMieHZSjWtKQ0d9M=;
 b=YAjcyGa4BWdwx8oWJCwcc2T0MDeCqE/BnJS5whVqSwqdOzNOhIBgG0u2anMfjtCJXB
 OpxnvJ3BWFcvhSRjs38NdwLpKmpni0J++8sxn6n+NBzrR2QQyLjViOEcDalzsUsa8E7R
 ZE+YYBMdHpQgdtCrs1iZA1xHNic3i6mjKDBthPPkl7Xip2wPtUV4k9fdD6ptdfEr6bHE
 wX6khZME61kXFjW++KMh3e8g8mIsqclYD7PL8Qo7Z989tISY29Tw3ITg7qDshdhz3fN8
 0QG9rfxOdWp0sZ2urzY5Me5jzoxf87xcJj4FitZkv+eVLRXQFm/YuXBErHotvNtjQfvX
 vShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rl+jKvoB1u0XRSwDs/U2JZrRhzMsMieHZSjWtKQ0d9M=;
 b=Mzb1M7w5wmYYjCtNjdxKDHMe53vqSuCzS+rj4T8zoph8Fx/CBE+1uRnnMgNWIz1ekz
 VYJxeMJtVOd2z0HDpCoxL2Hk2DlQhpPn64RSp1AtzW2H5gyulSRzk/WShicLiyiTmYvt
 OfTypMo8zRQNXuyWghE/bKmCRL9mIeImKTbPypa04B6r39Efv5CJPA3nSRdBVRcvbV2Z
 qn0oS+Awrnc4NoYhrL/msh8pEaifwQkxyyPI31ozRSzCo1gjBqSwyxyOa6UVe4g8MhcM
 zemcNL5RS5Mw+QgKhujC25Q0PjeKf/mP46BLLQeOkyJ4GsIl4SuPdoq5OgYjt+Rb+Lr/
 RYmA==
X-Gm-Message-State: APjAAAXYe+ANTZusCqD7V4H9mftSzkqU9op0meYnr8Qjdxjd5TE1suhD
 IUDB4NsrEa0J7ABAHlIKDNH/NEvPTTk=
X-Google-Smtp-Source: APXvYqybhqsG12EVQo2UM+/QtYP4xlUMgoZooAfpO91b7h55zTWlSSvTFmsxUsjf5h9ZRFzP2aVsSw==
X-Received: by 2002:a37:e313:: with SMTP id y19mr32385622qki.4.1574786112615; 
 Tue, 26 Nov 2019 08:35:12 -0800 (PST)
Received: from [192.168.15.15] ([177.27.193.125])
 by smtp.gmail.com with ESMTPSA id q17sm6288913qtq.58.2019.11.26.08.35.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 26 Nov 2019 08:35:11 -0800 (PST)
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
From: Luis Machado <luis.machado@linaro.org>
To: Will Deacon <will@kernel.org>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
Message-ID: <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
Date: Tue, 26 Nov 2019 13:35:08 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_083515_011524_7EEA3AA2 
X-CRM114-Status: GOOD (  30.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:730 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cGluZz8KCk9uIDExLzE4LzE5IDExOjU0IEFNLCBMdWlzIE1hY2hhZG8gd3JvdGU6Cj4gSGkgV2ls
bCwKPiAKPiBUaGFua3MgZm9yIHRoZSB0aG9yb3VnaCBleHBsYW5hdGlvbi4KPiAKPiBPbiAxMS8x
OC8xOSAxMDoxNSBBTSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+IEhpIEx1aXMsCj4+Cj4+IFsrTWFy
ayBmb3IgdGhlIHZhbGlkX3VzZXJfcmVncygpIHBhcnRdCj4+Cj4+IE9uIFR1ZSwgTm92IDEyLCAy
MDE5IGF0IDA4OjIyOjEwUE0gLTAzMDAsIEx1aXMgTWFjaGFkbyB3cm90ZToKPj4+IEkndmUgbm90
aWNlZCwgdW5kZXIgdmVyeSBzcGVjaWZpYyBjb25kaXRpb25zLCB0aGF0IGEgUFRSQUNFX1NJTkdM
RVNURVAKPj4+IHJlcXVlc3QgYnkgR0RCIHdvbid0IGV4ZWN1dGUgdGhlIHVuZGVybHlpbmcgaW5z
dHJ1Y3Rpb24uIEFzIGEgCj4+PiBjb25zZXF1ZW5jZSwKPj4+IHRoZSBQQyBkb2Vzbid0IG1vdmUs
IGJ1dCB3ZSByZXR1cm4gYSBTSUdUUkFQIGp1c3QgbGlrZSB3ZSB3b3VsZCBmb3IgYQo+Pj4gcmVn
dWxhciBzdWNjZXNzZnVsIFBUUkFDRV9TSU5HTEVTVEVQIHJlcXVlc3QuCj4+Pgo+Pj4gU2luY2Ug
dGhlcmUgYXJlIG5vIHNvZnR3YXJlIGJyZWFrcG9pbnRzIGluc2VydGVkIGF0IFBDICh3ZSBhcmUg
YWN0dWFsbHkKPj4+IHN0ZXBwaW5nIG92ZXIgYSBicmVha3BvaW50LCBzbyBHREIgcmVtb3ZlcyB0
aGUgYnJlYWtwb2ludCBhdCBQQyBiZWZvcmUKPj4+IGlzc3VpbmcgYSBQVFJBQ0VfU0lOR0xFU1RF
UCByZXF1ZXN0KSwgdGhpcyBpcyBhbiBvZGQgYmVoYXZpb3IuCj4+Pgo+Pj4gVGhvdWdoIG5vdCB0
b28gaGFybWZ1bCwgaSBzZWUgdGhpcyBtYW5pZmVzdGluZyBpbiB0aGUgR0RCIHRlc3RzdWl0ZQo+
Pj4gKGdkYi5yZXZlcnNlL2luc24tcmV2ZXJzZS5leHApLCB3aGljaCB0aHJvd3MgdGhlIHRlc3Qg
b2ZmIGJ5IG1ha2luZyBHREIKPj4+IHRoaW5rIGl0IGlzIGZ1cnRoZXIgaW4gdGhlIGluc3RydWN0
aW9uIHN0cmVhbSB0aGFuIGl0IHJlYWxseSBpcy4gSW4gCj4+PiBmYWN0LCB3ZQo+Pj4gZ2V0IGx1
Y2t5IGhlcmUgYW5kIG5vIEZBSUwncyBzaG93IHVwLCBvbmx5IG1hbnkgbW9yZSBzcHVyaW91cyBQ
QVNTZXMuCj4+Cj4+IEkgbWFuYWdlZCB0byByZXByb2R1Y2UgdGhpcyBsb2NhbGx5IGFuZCBJIHRo
aW5rIEkndmUgZmlndXJlZCBvdXQgd2hhdCdzCj4+IGdvaW5nIG9uLCBhbHRob3VnaCBJJ20gbm90
IHN1cmUgdGhhdCB0aGUga2VybmVsIGlzIHRoZSBiZXN0IHBsYWNlIHRvIGZpeAo+PiBpdC4KPj4K
Pj4gTG9va2luZyBhdCB0aGUgc3BlY2lmaWMgcmVwcm9kdWNlcjoKPj4KPj4+IEV4ZWN1dGUgZ2Ri
IGxpa2Ugc286Cj4+Pgo+Pj4gZ2RiIC1leCAic2V0IGRpc3BsYWNlZC1zdGVwcGluZyBvZmYiIC1l
eCAiYiBsb2FkIiAtZXggInJ1biIgLWV4IAo+Pj4gInJlY29yZCIgLWV4Cj4+PiAic2kiIC1leCAi
cnNpIiAtZXggInJlY29yZCBzdG9wIiBpbnNuLXJldmVyc2UKPj4KPj4gU28gd2UndmUgZ290IGEg
Y291cGxlIG9mIGluc3RydWN0aW9ucyBhcyBmb2xsb3dzIChpdCBkb2Vzbid0IGFjdHVhbGx5IAo+
PiBtYXR0ZXIKPj4gd2hhdCB0aGV5IGFyZSwgc28gSSd2ZSBjaGFuZ2VkIHRoZSBMRDEgaW4geW91
ciBiaW5hcnkgZm9yIGEgTk9QIGluIAo+PiBvcmRlciB0bwo+PiBhdm9pZCBjb25mdXNpb24gd2l0
aCB0aGUgImxvYWQiIGxhYmVsIG5vdCBhY3R1YWxseSBwb2ludGluZyBhdCBhIGxvYWQpOgo+Pgo+
PiDCoMKgwqDCoDB4N2I4OsKgwqDCoMKgwqDCoMKgIG1vdsKgwqDCoCAvLyAibG9hZCIKPj4gwqDC
oMKgwqAweDdiYzrCoMKgwqDCoMKgwqDCoCBub3AKPj4KPj4gImIgbG9hZCIgcGxhY2VzIGEgYnJl
YWtwb2ludCBhdCAweDdiODoKPj4KPj4gwqDCoMKgwqBwdHJhY2UoUFRSQUNFX1BPS0VEQVRBLCA2
NjIsIDB4YWFhYWFhYWFhN2I4LCAweGQ1MDMyMDFmZDQyMDAwMDApID0gMAo+Pgo+PiBXZSBydW4g
dG8gYSBzb2Z0d2FyZSBicmVha3BvaW50IG9uICJsb2FkIiAodGhlIG1vdiBpbnN0cnVjdGlvbiku
IFdlIHRha2UKPj4gdGhlIHRyYXAgYW5kIHRyeSB0byBleGVjdXRlIHRoZSAic2kiLCB3aGljaCBt
ZWFucyB3ZSBuZWVkIHRvIHJlbW92ZSB0aGUKPj4gYnJlYWtwb2ludCB3aGlsZSB3ZSBzdGVwIG92
ZXIgaXQ6Cj4+Cj4+IMKgwqDCoMKgcHRyYWNlKFBUUkFDRV9QT0tFREFUQSwgNjYyLCAweGFhYWFh
YWFhYTdiOCwgMHhkNTAzMjAxZjkxMDAwM2UwKSA9IDAKPj4gwqDCoMKgwqBbLi4uXQo+PiDCoMKg
wqDCoHB0cmFjZShQVFJBQ0VfU0lOR0xFU1RFUCwgNjYyLCAweDEsIDApwqAgPSAwCj4+Cj4+IFRo
aXMgY2F1c2VzIHRoZSBrZXJuZWwgdG8gYXJtIHRoZSBzaW5nbGUtc3RlcCBzdGF0ZSBtYWNoaW5l
IHNvIHRoYXQKPj4gTURTQ1JfRUwxLlNTID09IFNQU1JfRUwxLlNTID09IDEgKGtub3duIGFzICJh
Y3RpdmUtbm90LXBlbmRpbmciKS4gUnVubmluZwo+PiBhbiBpbnN0cnVjdGlvbiBpbiB1c2Vyc3Bh
Y2Ugd2lsbCB0cmFuc2l0aW9uIHRvIE1EU0NSX0VMMS5TUyA9PTEgYW5kCj4+IFNQU1JfRUwxLlNT
ID09IDAgKGtub3duIGFzICJhY3RpdmUtcGVuZGluZyIpLCB3aGljaCB3aWxsIGNhdXNlIHRoZSAK
Pj4gdHJhcCB0bwo+PiB0cmlnZ2VyLCBhdCB3aGljaCBwb2ludCBnZGIgcHV0cyB0aGUgYnJlYWtw
b2ludCBpbnN0cnVjdGlvbiBiYWNrIHNpbmNlIAo+PiB0aGUKPj4gc3RlcCBpcyBjb21wbGV0ZToK
PiAKPiBTbywganVzdCB0byBjb25maXJtIG15IHVuZGVyc3RhbmRpbmcsIHdlIGhhdmUgYSBjb3Vw
bGUgYml0cyBjb250cm9sbGluZyAKPiBzaW5nbGUtc3RlcHBpbmcgaW4gdGhlIGtlcm5lbCwgb25l
IGluIE1EU0NSX0VMMSBhbmQgYW5vdGhlciBpbiBTUFNSX0VMMS4gCj4gR0RCIGRvZXNuJ3QgaGF2
ZSBkaXJlY3QgYWNjZXNzIHRvIGFueSBvZiB0aG9zZSwgY29ycmVjdD8KPiAKPiBJbnN0ZWFkLCBH
REIgaGFzIGFjY2VzcyB0byBhIFNTIGJpdCBpbiB0aGUgcmVzZXJ2ZWQgMjF+MjIgcmFuZ2Ugb2Yg
Q1BTUi4KPiAKPiBUaGUgdHJhbnNpdGlvbiBmcm9tIGFjdGl2ZS1ub3QtcGVuZGluZyB0byBhY3Rp
dmUtcGVuZGluZyB0YWtlcyBwbGFjZSB2aWEgCj4gYSBzaW5nbGUgUFRSQUNFX1NJTkdMRVNURVAg
cmVxdWVzdD8gSXMgdGhhdCBjb3JyZWN0Pwo+IAo+Pgo+PiDCoMKgwqDCoHB0cmFjZShQVFJBQ0Vf
UE9LRURBVEEsIDY2MiwgMHhhYWFhYWFhYWE3YjgsIDB4ZDUwMzIwMWZkNDIwMDAwMCkgPSAwCj4+
Cj4+IFRoaXMgaXMgd2hlcmUgdGhpbmdzIHN0YXJ0IHRvIGdvIHdyb25nLiBUaGUgInJzaSIgY29t
bWFuZCBhdHRlbXB0cyB0bwo+PiBwZXJmb3JtIGEgcmV2ZXJzZSBzdGVwLCB3aGljaCBtZWFucyBy
ZXN0b3JpbmcgdGhlIG9sZCBzdGF0ZSB3aGVuIHdlIHdlcmUKPj4gcHJldmlvdXNseSBleGVjdXRp
bmcgYXQgMHg3YjguIEl0IHN0YXJ0cyBieSByZW1vdmluZyB0aGUgYnJlYWtwb2ludCAKPj4gYWdh
aW4sCj4+IHNpbmNlIHdlJ3ZlIGFscmVhZHkgaGl0IHRoYXQ6Cj4+Cj4+IMKgwqDCoMKgcHRyYWNl
KFBUUkFDRV9QT0tFREFUQSwgNjYyLCAweGFhYWFhYWFhYTdiOCwgMHhkNTAzMjAxZjkxMDAwM2Uw
KSA9IDAKPj4KPj4gYW5kIHRoZW4gcmVzZXRzIHRoZSBDUFUgcmVnaXN0ZXJzIHRvIHRoZWlyIG9s
ZCB2YWx1ZXM6Cj4+Cj4+IMKgwqDCoMKgKEkgZG9uJ3Qga25vdyB3aHkgaXQgZG9lcyB0aGlzIHRo
cmVlIHRpbWVzKQo+PiDCoMKgwqDCoHB0cmFjZShQVFJBQ0VfU0VUUkVHU0VULCA2NjIsIE5UX1BS
U1RBVFVTLCAKPj4gW3tpb3ZfYmFzZT0weGZmZmZmZjY0YjNjOCwgaW92X2xlbj0yNzJ9XSkgPSAw
Cj4+IMKgwqDCoMKgcHRyYWNlKFBUUkFDRV9TRVRSRUdTRVQsIDY2MiwgTlRfUFJTVEFUVVMsIAo+
PiBbe2lvdl9iYXNlPTB4ZmZmZmZmNjRiM2M4LCBpb3ZfbGVuPTI3Mn1dKSA9IDAKPj4gwqDCoMKg
wqBwdHJhY2UoUFRSQUNFX1NFVFJFR1NFVCwgNjYyLCBOVF9QUlNUQVRVUywgCj4+IFt7aW92X2Jh
c2U9MHhmZmZmZmY2NGIzYzgsIGlvdl9sZW49MjcyfV0pID0gMAo+Pgo+PiBUaGUgcHJvYmxlbSB3
aXRoIHRoaXMgaXMgdGhhdCB3ZSBoYXZlIG1vdmVkIHRoZSBQQyBiYWNrIHRvIDB4N2I4IGJ1dCAK
Pj4gd2UgaGF2ZQo+PiBhbHNvIGNsZWFyZWQgU1BTUl9FTDEuU1MgdG8gMC4gSW50ZXJuYWxseSwg
dGhlIGtlcm5lbCBoYXNuJ3Qgc2VlbiAKPj4gc3RlcHBpbmcKPj4gZ2V0IGRpc2FibGVkICh0aGlz
IHVzdWFsbHkgaGFwcGVucyBieSBQVFJBQ0VfQ09OVCBjYWxsaW5nCj4+IHVzZXJfZGlzYWJsZV9z
aW5nbGVfc3RlcCgpKSB3aGljaCBtZWFucyB0aGF0IE1EU0NSX0VMMS5TUyByZW1haW5zIHNldCAK
Pj4gdG8gMQo+PiBhbmQgd2UncmUgaW4gdGhlIGFjdGl2ZS1wZW5kaW5nIHN0YXRlISBDb25zZXF1
ZW50bHksIHdlIGltbWVkaWF0ZWx5IAo+PiB0YWtlIGEKPj4gc3RlcCBleGNlcHRpb24gaWYgYSBz
dGVwIG9wZXJhdGlvbiBpcyBhdHRlbXB0ZWQgPgo+IAo+IFdoaWxlIHRyeWluZyB0byByZXByb2R1
Y2UgdGhpcywgaSB3YXMgcGF5aW5nIGF0dGVudGlvbiB0byB0aGUgU1MgYml0IAo+IGNvbWluZyBh
bmQgZ29pbmcuIEJ1dCBpbiB0aGUgcGFydGljdWxhciBzZXF1ZW5jZSBvZiBzaS9yc2ksIHdpdGhp
biB0aGUgCj4gcmVjb3JkIGJvdW5kYXJpZXMsIGkgc2VlIEdEQiBqdXN0IHJlc3RvcmVkIHRoZSBv
cmlnaW5hbCBDUFNSIHZhbHVlIHRvIAo+IHdoYXQgaXQgd2FzIGJlZm9yZSB3ZSBwcm9jZXNzZWQg
dGhlIHNpIGNvbW1hbmQuCj4gCj4gIEZyb20gR0RCJ3MgUE9WIGFsbCBzdGF0ZSB3YXMgcmVzdG9y
ZSB0byB0aGUgd2F5IGl0IHdhcyBiZWZvcmUgYW5kIHdlJ3JlIAo+IGdvb2QgdG8gZ28uCj4gCj4g
SXMgdGhpcyBub3QgZW5vdWdoIHRvIHJlc3RvcmUgc3RhdGUga2VybmVsLXdpc2U/Cj4gCj4+IE5v
dywgd2UgKmNvdWxkKiBjb25zaWRlciBoYWNraW5nIHRoZSBUSUZfU0lOR0xFU1RFUCBjaGVjayBp
bgo+PiB2YWxpZF91c2VyX3JlZ3MoKSBzbyB0aGF0IFNQU1JfRUwxLlNTIGlzIHByZXNlcnZlZCB3
aGVuIHN0ZXBwaW5nIGlzIAo+PiBhY3RpdmUKPj4gYnV0IHRoaXMgaXMgYSB1c2VyLXZpc2libGUg
Y2hhbmdlIGFuZCBtYXkgYnJlYWsgdGhpbmdzIGxpa2Ugc3RlcHBpbmcgCj4+IG91dCBvZgo+PiBz
aWduYWwgaGFuZGxlcnMuIEkgd291bGQgcHJlZmVyIHRoYXQgR0RCIG1hbmFnZXMgdGhlIFNTIGJp
dCBleHBsaWNpdGx5IGluCj4+IHRoaXMgc2NlbmFyaW8sIGJ5IHNldHRpbmcgaXQgdG8gMSB3aGVu
IHJlc3RvcmluZyB0aGUgb2xkIHN0YXRlIGluIHRoZQo+PiByZXZlcnNlIHN0ZXAsIGEgYml0IGxp
a2Ugd2hlbiBpdCBkaXNhYmxlcyB0aGUgb2xkIGJyZWFrcG9pbnQuIFlvdSBjYW4KPj4gZW11bGF0
ZSB0aGlzIGJ5IGRvaW5nOgo+IAo+IEkgdGhpbmsgd2UgY291bGQgbGV0IEdEQiBjb250cm9sIHRo
aXMgd2hlbiByZXF1aXJlZCwgYnV0IEknbSB0cnlpbmcgdG8gCj4gdW5kZXJzdGFuZCB0aGUgcmFt
aWZpY2F0aW9ucyBvZiBsZXR0aW5nIEdEQiBkbyBzby4KPiAKPiBGb3IgZXhhbXBsZSwgd2hhdCBp
ZiB0aGUgdXNlciBkZWNpZGVzIHRvIGFsdGVyIHRoZSBQQyBoZXJlIGFuZCB0aGVyZSwgCj4gZm9y
IGRlYnVnZ2luZyBwdXJwb3Nlcy4gVGhhdCBpcyBhIHVzZSBjYXNlIHRoYXQgaGFwcGVucyBvZnRl
biwgaW4gb3JkZXIgCj4gdG8gZ28gYmFjayBvciBza2lwIHNvbWUgcGFydHMgb2YgdGhlIGNvZGUu
Cj4gCj4gV291bGQgd2UgbmVlZCB0byBwYXkgYXR0ZW50aW9uIHRvIHRoZSBTUyBiaXQgaW4gdGhv
c2UgY2FzZXMgYXMgd2VsbD8KPiAKPj4KPj4gwqDCoMKgwqAoZ2RiKSBzZXQgJGNwc3IgfD0gKDE8
PDIxKQo+IAo+IEluIHBhcnRpY3VsYXIsIHdoYXQgZG9lcyB0aGUgc3dpdGNoaW5nIG9mIHRoaXMg
Yml0IGFjY29tcGxpc2hlcyBpbiB0aGUgCj4ga2VybmVsPyBXb3VsZCB3ZSBiZSBiZXR0ZXIgb2Zm
IGZvcmNpbmcgdGhlIFNTIGJpdCBldmVyeSB0aW1lIHdlIGRvIGEgCj4gc2luZ2xlLXN0ZXAgb3Bl
cmF0aW9uLCBmb3IgZXhhbXBsZT8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
