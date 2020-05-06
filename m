Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498AD1C75E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlG/tbghTCFAXHXBBzGDzBJLuJv4Xt1p46mOeMi3krQ=; b=QU6NrDdbcrl2qS
	eurwStDhTNJwRxIvGr1Ud45R4Vi961rHqULuuyOatthDAnY8gg7jnk8r1vnRR+uMUbJojnIP2ep7Y
	GgB2poUj3iCGH6ps7EeLQmvp7B7zWVW81l5/+sU9KumQn4LxUU+wnEWXHht+66/NFQgftZFHDu0KH
	Vg9fBOyPaYdLB0DUph/EGuo8B8JfS/cKr8G9535rmyAKeIUxwDp342KYNw3QxnKT+yiPO6wQYqGXG
	q6HNAMLO4PISwh3HouTF/wNOK9qNjM2ki6okNeGFfJVV3mr5T+YzepB0643TEgIFpGCnC2Q6WaiIE
	h+6ohNRgQXaXVOhCq+CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMe0-0002gU-JF; Wed, 06 May 2020 16:11:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMdt-0002f0-C9
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:11:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id w7so2041199wre.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 09:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ccHp92st48Nd037ITInv0eAdbDDFis00uziuTe+q1ig=;
 b=E0nSX+bW00Ddp0psF0EByfyq8Ni2QAe5pChbjYo2gf+UT/8ZJtOBpIXzDN84y+c/mW
 SUAiVMlkKuJrN6721rsQo3Dt2Q6SeJq/m/pWZSoIajqLx9M2PbEATQmQxVJhIyrleym4
 HSM/59egAF3uD+x6UCA4c3sgAIBdgS1swCEfe5rK5ozv9yFAhJSv/vdwaePVOYk4HYM2
 mN9S2imVEyfCyScRycK9zXbVWaypXbF+Z4ibknJZh8uq41OYYhhZMQv4JKCeq0jkbhDN
 1K/hERkgxHfM23kWxoLzW1YPPLK5/NHIyv3mOQdrQakgJaVV1B4ZdxzqvPkPrAQcHXvn
 CSCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ccHp92st48Nd037ITInv0eAdbDDFis00uziuTe+q1ig=;
 b=ltNF4Pbhd73+MQI0WOI1TIYtHeKyVR15LwgQGiIwF2EnlRxlW968KITJbDuYg9H0WE
 lLkIentjAN3dYg3liBsb8sNanwAbjedSPxoEjLq9W3Xx9bLsjGZ8jxbAlwWILdz3zVS3
 Zc5qByYj76ke9/Yek5ut+6PX2xWNMkeuH9wAWW+F9jixF9DyWV926w2NyjKFkVqCpfHj
 DHhDxkACRjwHZprdn2npxW/8ycBuwyn12e/3viAPfTSBf/mUy9ssbcUyRpcLr91Klrnq
 mMqryQsxXppG1WoitfW+MXatmbRehuipZU8qEIqarjH+tAEscIHgTH9rb9hclghYxLST
 BTmQ==
X-Gm-Message-State: AGi0PuZaBgSSBFG/agRNZ7+h0WAqIYVDvbXiJLk2DLacPqYKy/lIP64e
 WstG9u+lxczpqSkRo1RMDziYJw==
X-Google-Smtp-Source: APiQypJTpSAXsnLNWvEdXxkkOJ3qN+jMw/pd1MjvwcFOp53i5/p8QQNNvHzCa+8uFno2u1+sszi2Mg==
X-Received: by 2002:adf:eac6:: with SMTP id o6mr10160494wrn.297.1588781481916; 
 Wed, 06 May 2020 09:11:21 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id x18sm3434942wmi.29.2020.05.06.09.11.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 09:11:21 -0700 (PDT)
Date: Wed, 6 May 2020 18:11:12 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
Subject: Re: [PATCH] perf/smmuv3: Allow sharing MMIO registers with the SMMU
 driver
Message-ID: <20200506161112.GA1197429@myrica>
References: <20200421155745.19815-1-jean-philippe@linaro.org>
 <F8C2FB7F-2D21-44AA-B41D-0D4555A63660@amperemail.onmicrosoft.com>
 <20200429072104.GA817954@myrica>
 <D4FCF21C-D514-44F0-82CF-4932C704117B@amperemail.onmicrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D4FCF21C-D514-44F0-82CF-4932C704117B@amperemail.onmicrosoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_091129_418746_14B69F4D 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, lorenzo.pieralisi@arm.com,
 Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBcHIgMjksIDIwMjAgYXQgMTE6MDE6MDVBTSAtMDcwMCwgVHVhbiBQaGFuIHdyb3Rl
Ogo+IAo+IAo+ID4gT24gQXByIDI5LCAyMDIwLCBhdCAxMjoyMSBBTSwgSmVhbi1QaGlsaXBwZSBC
cnVja2VyIDxqZWFuLXBoaWxpcHBlQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gCj4gPiBPbiBUdWUs
IEFwciAyOCwgMjAyMCBhdCAxMToxMDowOUFNIC0wNzAwLCBUdWFuIFBoYW4gd3JvdGU6Cj4gPj4g
SSB0ZXN0ZWQgdGhpcyBwYXRjaCBvbiBIVywgaG93ZXZlciBJIG5lZWQgdG8gYWRkIG9uZSBtb3Jl
IGZvbGxvd2luZyBjaGFuZ2UgdG8gbWFrZSBpdCB3b3Jrcwo+ID4gCj4gPiBUaGFua3MgZm9yIHRl
c3RpbmcuIEkgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgeW91IG5lZWQgdGhlIGNoYW5nZSBiZWxvdwo+
ID4gdGhvdWdoLCBkbyB5b3Uga25vdyB3aGljaCBvdGhlciByZWdpb24gaXMgY29uZmxpY3Rpbmcg
d2l0aCB0aGUgU01NVT8KPiA+IEl0IHNob3VsZCBiZSBkaXNwbGF5ZWQgaW4gdGhlIGVycm9yIG1l
c3NhZ2UgYW5kIC9wcm9jL2lvbWVtLgo+ID4gCj4gPiBUaGFua3MsCj4gPiBKZWFuCj4gCj4gVGhl
IGVycm9yIGlmIEkgZG9u4oCZdCBhcHBseSB0aGF0IHBhdGNoOgo+IFsgICAgNC45NDM2NTVdIGFy
bS1zbW11LXYzIGFybS1zbW11LXYzLjAuYXV0bzogY2FuJ3QgcmVxdWVzdCByZWdpb24gZm9yIHJl
c291cmNlIFttZW0gMHgzYmZmZTAwMDAwMDAtMHgzYmZmZTAwMWZmZmZdCj4gCj4gVGhlIG91dHB1
dCBvZiAvcHJvYy9pb21lbSBmb3IgdGhhdCByZWdpb246Cj4gM2JmZmUwMDAwMDAwLTNiZmZlMDAx
ZmZmZiA6IGFybS1zbW11LXYzLjAuYXV0byAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAKPiAgIDNiZmZlMDAwMjAwMC0zYmZmZTAwMDJmZmYgOiBh
cm0tc21tdS12My1wbWNnLjE3LmF1dG8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIAo+ICAgM2JmZmUwMDEyMDAwLTNiZmZlMDAxMmZmZiA6IGFybS1zbW11LXYz
LXBtY2cuMTcuYXV0byAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCgpUaGFua3MgZm9yIHRoaXMuIEl0IGxvb2tzIGxpa2UgdGhlIHJlZ2lvbnMgYXJlIGFkZGVk
IHRvIHRoZSByZXNvdXJjZSB0cmVlCnR3aWNlLCB3aGVuIGJvb3Rpbmcgd2l0aCBBQ1BJOgoKV2hl
biB0aGUgSU9SVCBjcmVhdGVzIHRoZSBwbGF0Zm9ybSBkZXZpY2VzLCBwbGF0Zm9ybV9kZXZpY2Vf
YWRkKCkgaW5zZXJ0cwp0aGVzZSByZXNvdXJjZXMgYnV0IGRvZXNuJ3QgbWFyayB0aGVtIGJ1c3ku
IEFzIEkgd2FzIHRlc3Rpbmcgd2l0aApkZXZpY2V0cmVlIEkgd2FzIG1pc3NpbmcgdGhpcyBzdGVw
LgoKVGhlbiB0aGUgU01NVSBwcm9iZSBjYWxscyBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoKSwgd2hp
Y2ggdHJpZXMgdG8gcmVzZXJ2ZQp0aGUgcmVzb3VyY2VzIGFuZCBtYXJrIHRoZW0gYnVzeSB0aGlz
IHRpbWUuIElmIHRoZXJlIG9ubHkgd2FzIHRoZSBub24tYnVzeQpTTU1VIHJlZ2lvbiBpbnNlcnRl
ZCBhYm92ZSwgdGhlbiBfX3JlcXVlc3RfcmVnaW9uKCkgd291bGQgYWRkcyB0aGUKcmVzZXJ2ZWQg
cmVnaW9uIGFzIGEgY2hpbGQuIEhvd2V2ZXIgc2luY2UgdGhlcmUgYXJlIHNtYWxsZXIgUE1DRyBy
ZWdpb25zCmFzIGNoaWxkcmVuIG9mIHRoZSBTTU1VIHJlZ2lvbiwgX19yZXF1ZXN0X3JlZ2lvbigp
IGZhaWxzLgoKQW5vdGhlciBpZGVhIGlzIHRvIGF2b2lkIG1hcHBpbmcgdGhlIElNUERFRiByZWdp
c3RlcnMgaW4gdGhlIFNNTVUgZHJpdmVyLgpJIHRoaW5rIGl0J3MgbmljZXIsIGFuZCBJJ2xsIHBv
c3QgdGhhdCBwYXRjaCBzaG9ydGx5LgoKVGhhbmtzLApKZWFuCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
