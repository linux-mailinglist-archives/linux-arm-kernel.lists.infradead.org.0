Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7B31175E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 20:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E42fLhTZbfVZ86WcC3QoiwQ4hxuSDyv+of1IHcOQaI8=; b=gnUsuo4iupqaE8
	IRMPfo5mFsUPUySYfEdngrF9ts2pUwAH8ZM7Aa/yopVrwgg43K/6H3EltCUOvfYgu+ApOxny6zHUF
	AShZ4w92GWfIhMErf+5grRn0N3dUmcen6QAurULqvD+8ntO7jiV1sdEQdwjdMF0AnC9i1/XfoiaWY
	3+CYdfqC/5y3E+YMM4iqZOSoHu7H0lKSHFIjN8ZcfS++9Jv88NIhC8xZBV8msf6AZvVx2c3LLwswm
	jM6UE47RzErnav2MQ9L4H7nYx2y7vRQNeck9wMi7Fx2NfYJ0UEWTsjKnaTW3EBwe1w9uv6T46Sy0T
	Yj+fKFliPhb6z04uygqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieOlA-00084E-TV; Mon, 09 Dec 2019 19:31:56 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieOl1-00081N-B0; Mon, 09 Dec 2019 19:31:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575919898;
 bh=AUfqQYIRAgbNgT+zTgx5Gsfrr/QhpuT2Foh4yW4jo10=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=At0PDhC7SZjeUlO74MgECwSPzAIMAmgOO+gFu6HYZ1O3lvdyCPlZSNQ20Ii6tEUPD
 wk2KKmxjSlmae+G4n5qLigldvI9aIEM+L4gpWOPa+c3sm76dWFL+mJiCWuzlruUSwd
 XMohvDHUT12YNHIzLfi0gEVRTV9u2H2+UdgG/BqU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.93]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MRTRN-1iQSnn35Hx-00NTxa; Mon, 09
 Dec 2019 20:31:38 +0100
Subject: Re: [PATCH] ARM: dts: bcm283x: Fix critical trip point
To: Florian Fainelli <f.fainelli@gmail.com>, Lukas Wunner <lukas@wunner.de>
References: <1575117073-5990-1-git-send-email-wahrenst@gmx.net>
 <20191130135403.jmuuuy3lf5l3enti@wunner.de>
 <899ae14b-28d0-0982-cbdf-baf4f1e978fe@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <aa08117e-b6d5-fcdb-8d01-28810f56e210@gmx.net>
Date: Mon, 9 Dec 2019 20:31:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <899ae14b-28d0-0982-cbdf-baf4f1e978fe@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:yFizhTI8lrMwzaYExT6bAFWv6DPEmmSLxVxOt0k3cEKssUU3hqx
 Dp1HuyRXmcsWLX92M1rioazqQQ1M/Ow/2hG+nJHQMvIr0byg2AngXtNMhQvtAlAEe5xsq9o
 9qkjNkSmB0ugjrSYNIbLzyeGs8KZPUwRUxE2A6VAvJy7ea6DtjOeTS5IDLGtihrDgi4rcMd
 7OofmUdmKZiEEDEt8Kwtg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZegD9ztDaHU=:MkIEr22DGaYgVlrIcRPAJL
 kBbEixf9fxQVsvYgt0CbqL9Q1AyUZbGV7ElmdRZZoIG6BWvM6ZE+LjOTaEUzdjLK9wc1j7DlD
 pzQjVhNVtnjYhfTd5SPIJS7SJiRHhoSOvTSIUBBS7s/LYI5yzVKVrR6md/DCZFkqeel/9Jl0m
 u45hyn4A1ReqleyOfuW1E395NMoYPOuRG2JRCMztKkNEDRndenE6OfOybw7vAHkfGG0R0LEjR
 0FG7jmOSidf9eYwJnhTUkVANYHR16nz4vkhqKjXqnBJF6h4DvN4uIQQ79d72Eiky93no4BbtW
 QVJNsDx8s6n/bsDzCS18EuDdLH1ysiRASo4LfKryRO3AXPdNcDrknIaNMnE5ZN/5BbWbGL9eP
 sKNGSVim1nSTrqvwW3VjZ3qGbBnuQ0tigeNT4kN7mfuyH+DtABgffpvO+hcMos7m391UeO7bv
 Ut+dn5T3eVKYIXl+RIESewIccPSJC63JuVFlDwdduFIlRRVz57oZmLAJdY39LGKEsYOYL4/G5
 J38TKZE4k2CAOcBzafL2PzMheysE+RYjJjs9wZ24bmWfMMnC04p5NfLJPo40gScNjAwXamguY
 lX5RstWOZr+mJEY5G3id/L4udd8x6CA6OG9rsUMGWm0LpOJz81NO8TzPvsQfp9yXVc9pBbe6u
 7JDeK6KR1ad+OwhP3jESQnC0HnMA1DFSQf1ZxPBr3CZq3lIHDApCcH2hiWK7pHDWcH1TKqN/g
 YDJUcQCiMpaHNkURVKfXtUeoSL4jgSRBpBqTzfRaAYiJM7nDCiO8t80Ztp00uxuUmjSdVNL4E
 +JThvgW8AGAOoAlk5wht+Jk7K+OPpQYGzFiEiXrCmedqojHyVBDFyjhKnTPSkDpHgVqm4KKE3
 Aab1rNmhKL5P5bJMJzY/jQmBfuiJMC/13ZNaUn4sLJgcPegVLutp4cA2Ms9lZZVVKEUE3ymO0
 pvC3ZOU/NEvT1V1WVQpK2k5NDfERJJJvg10iZwi+jUW5g7LWjA8HXaZ0xWGLTR1cQJgKsqxdh
 N80gu3Nzc26eCLnc1QyJN9GAAvv6gWbSVH+tUmYzBIMNPqQiXNmBzfyi0ijUFWht8I+QsJ50m
 5UbyboW51CnTedtAOWc2akKM2Xh1diJ8GKkwcTobfmh9DHw3QrsPSo9KqVraeoAifvLFABmPa
 7N8QpltqzAVx3Fko2nniHC/9hKms+d19PMyhomGRDNLpKe/2TmBCpmo0v2qrOFHg8aPBsaBny
 6XMJ2IUIvZVoDjtm/CiNhOMlgk/2OZptIWcDh3Ua322Ah0vY114UTC+6OjIs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_113147_709639_0086B52B 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDkuMTIuMTkgdW0gMTk6MTcgc2NocmllYiBGbG9yaWFuIEZhaW5lbGxpOgo+IE9uIDExLzMw
LzE5IDU6NTQgQU0sIEx1a2FzIFd1bm5lciB3cm90ZToKPj4gT24gU2F0LCBOb3YgMzAsIDIwMTkg
YXQgMDE6MzE6MTNQTSArMDEwMCwgU3RlZmFuIFdhaHJlbiB3cm90ZToKPj4+IER1cmluZyBkZWZp
bml0aW9uIG9mIHRoZSBDUFUgdGhlcm1hbCB6b25lIG9mIEJDTTI4M3ggU29DIGZhbWlseSB0aGVy
ZSB3YXMKPj4+IGEgbWlzdW5kZXJzdGFuZGluZyBvZiB0aGUgbWVhbmluZyAiY3JpdGljaWFsIHRy
aXAgcG9pbnQiIGFuZCB0aGUgdGhlcm1hbAo+Pj4gdGhyb3R0bGluZyByYW5nZSBvZiB0aGUgVmlk
ZW9Db3JlIGZpcm13YXJlLiBUaGUgbGF0dGVyIG9uZSB0YWtlcyBlZmZlY3QKPj4+IHdoZW4gdGhl
IGNvcmUgdGVtcGVyYXR1cmUgaXMgYmV0d2VlbiA4MCBhbmQgODUgZGVncmVlIGNlbHNpdXMuIFNv
IHRoZQo+Pj4gY3VycmVudCBjcml0aWNhbCB0cmlwIHBvaW50IGRvZXNuJ3QgbWFrZSBzZW5zZSwg
YmVjYXVzZSB0aGUKPj4+IHRoZXJtYWwgc2h1dGRvd24gYXBwZWFycyBiZWZvcmUgdGhlIGZpcm13
YXJlIGhhcyBhIGNoYW5jZSB0byB0aHJvdHRsZSB0aGUKPj4+IEFSTSBjb3JlKHMpLgo+PiBGV0lX
LCB0aGUgdGhlcm1hbCB0aHJvdHRsaW5nIHJhbmdlIGdvZXMgd2F5IGFib3ZlIDg1wrBDLgo+Pgo+
PiBBdCBLdW5idXMgd2UndmUgcGVyZm9ybWVkIG51bWVyb3VzIHRlc3RzIGluIGEgY2xpbWF0ZSBj
aGFtYmVyCj4+IGFuZCBteSByZWNvbGxlY3Rpb24gaXMgdGhhdCBhIENNMyBzdGFydHMgdGhyb3R0
bGluZyBhYm92ZSA4MMKwQwo+PiB3aXRoIHRoZSBmcmVxdWVuY3kgaG92ZXJpbmcgYmV0d2VlbiA2
MDAgYW5kIDEyMDAgTUh6Lgo+Pgo+PiBPbmNlIDg1wrBDIGlzIHJlYWNoZWQsIHRoZSBmcmVxdWVu
Y3kgaXMgZml4ZWQgYXQgNjAwIE1Iei4KPj4KPj4gQnV0IHRoZXJlIGEgYWRkaXRpb25hbCB0cmlw
cGluZyBwb2ludHMgYWJvdmUgdGhhdCB3aGVuIHRoZSBmcmVxdWVuY3kKPj4gZ2V0cyBmdXJ0aGVy
IHJlZHVjZWQgdG8gNDAwIE1IeiBhbmQgbGF0ZXIgMzAwIE1Iei4KPiBEb2VzIHRoYXQgbWVhbiB0
aGF0IHlvdSBhcmUgb2theSB3aXRoIDkwwrBDIGhlcmUsIG9yIHdvdWxkIHlvdSByYXRoZXIgc2Vl
Cj4gdGhpcyBiZSBjaGFuZ2UgdG8gODXCsEM/CgpGcm9tIG15IHVuZGVyc3RhbmRpbmcgdGhlIGNo
YW5nZSBpcyBva2F5LCBidXQgdGhlIHdvcmRpbmcgaW4gdGhlIHBhdGNoCmRlc2NyaXB0aW9uIGlz
IG1pc2xlYWRpbmcuCgpTdWdnZXN0aW9uOgoKLi4uIFRoZSBsYXR0ZXIgb25lIHRha2VzIGVmZmVj
dCB3aGVuIHRoZSBjb3JlIHRlbXBlcmF0dXJlIGlzIGF0IGxlYXN0IDg1CmRlZ3JlZSBjZWxzaXVz
IG9yIGhpZ2hlci4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
