Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C362DB95D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 18:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bX3aBHSRsx3+ItdtEHzU5WUvt0Pzqor0xLU6DiXJuAI=; b=S/FSXL+5VODUkxA2ei/XY2F27K
	nJOdjmBLRzo3GGshsBxDgP+yyINTVT5BFzCs8szRdNXQjv6DC6P8utcA/lZBqs+/15b4qmu4Csuq9
	Kv7yeyrlusU+2/TaRRorOyFiMbFAO5hrMObVwqZNnL5mkvqSysKbCHjA7VinxyndiK2e6MWy2Mim9
	E8XJ/1uWbFhqPGX6s4UDt2AGg/cpjJXQ2o0IiR16HxDPuNMS330vjVdToL7Jst4hBzVfVfnQeeTrE
	3ldYePUSJaKGCRM6zdGyw8YTDs35cjzImiFnh2/PRe5djVsMaprHSnT0V8xyMMwPMx5xZG2UmtYms
	QhjNeZag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBLu9-0004jw-VD; Fri, 20 Sep 2019 16:37:09 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBLu2-0004jA-7r
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 16:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1568997412;
 bh=i39IsJc++Jr8MAJyCOZRd856x9anevCw04z5HGWInYM=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=cTzLGxfDAxb51QwYaumrHcZMEIk5yny4DCATzAC8P10rx1ZMGnWRB309376ogKQ3N
 CwuYvw8RVcyKzxdA/eiaQahE0J1Fasj9bmYgqyE3vaBEhdh/x0pKK3X5uZggluiLZe
 vMZ+zHd/nYtKjLM1m1NbBnhalDOjDzll5iZe0a7I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.90]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M4s4r-1iAXDf1tHL-001yKu; Fri, 20
 Sep 2019 18:36:52 +0200
Subject: Re: ARM core blob list
To: Sergey Brutyan <sergey_brutyan@ehayq.am>,
 linux-arm-kernel@lists.infradead.org
References: <7c52fab5-825a-b019-ec46-6fb731336cfe@ehayq.am>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <214b72fe-3162-6c7b-dd6a-ddba9e5851ce@gmx.net>
Date: Fri, 20 Sep 2019 18:36:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7c52fab5-825a-b019-ec46-6fb731336cfe@ehayq.am>
Content-Language: en-US
X-Provags-ID: V03:K1:+PjRXNbdkLQIpzrooNGLLrWWJGq4EzjiQNozPF1Kow7urAiwLKj
 Y6/6C5xlHMb39CqmwgwkYRd8E9J6srZwrHRXAlc9mpmHRkFIx9PeNE8t/I7mhBnoee55N55
 yioxOTHYPD9JQDTU86i0n74V8rserAyEFv8qKc1yPDmYyJsCei8hePI3WUUXYwRRClSjF/p
 +s0PcegSZPKu+jPimJBpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ocyavwmMa3o=:LA2CELmOiflGVGE9HNaMnd
 ttWpUKrxOHlCnu4JgGtAg387ljMrSTCgaIf5Dez241LVN7W5tiDjyOWZj8JW9ywNu5yFvyZNZ
 9DREzPBWarzw4TmgExPgtWXjBOgjuc6XC+fvNtVMpBro1u/DEg5pvUSERv5flv3qNzMnK1l72
 JMFjVLuzMNoJadiPrLxP1X2+IlWohexI7wLmh5oLv3f09bUNpWdAj9URSMqWVO+06bEmt66bE
 KJoUtqlgffMtlhdXm4FJG5I6Ap80gbrk75aFpu4S2K0Ev58h5bn8HfHM0+uPE773zeILdlaOT
 zztx2nZK92yWCPNHvIk+xW0PFBBkKaISbLBt7L+xSbd9D8eTjl5WGUX8iKtg4rb4SP0Eyacx+
 q4Y3eq/xyk+kqrPDdBox8ntgdxYjwMxOAvBSDAHR2C3jCO/lY/cZAEt+JdGUXrEI4dk9A6cbV
 /eyyeki+keWgQV5Fq4m4GKv4vqvDi3ZEWcPgBsZa3KEfqWUzxhRyAe3yomunytPAM25DsXoLC
 nSeJ21fFOHoxAB3wObLpoEkfsDby+SZ0fYmnIFY7ZHt584LSE+dglTdQxUqw9yUcOZ1YAidjC
 N2ZKwqyf9bScYH4McdRFcMus5hWtY5hz70N6kNHCYWHdJbnqvcnRPkVFP2/ePVIlkBf2EJ+53
 TSV9yt1k3VnCiTO5n9ULO9POVr0VahuON31SKqcEtQQi7DzbRbsn0houDKtIoHvdFq8Yvpx+g
 bCGNbx6MVF/en61mVJXZMTfReCckQPL4Ax6T3vZwIJioWlwbRvr/G03+mnUboi285glUFOq+M
 VFtLXTpD5qrVA5Xu7e3iLPXshTAqYSYO310LoBTNWYi3McjSGLuPH8FfmDoyBAqsCfY3KrPfS
 zEWm/u6tc28q7ZokqhbxbkLiUdX5AGz1ov43YPrLzY3lEcjXq2ZGh5P8FXx+Qh2WqqRUP3IHQ
 ciBoGya1PkbhWbG6QvQ/r4HWLFBBTviZIZjMarXaLUxClBvb+obALEGDd3xM5EWPMMlbwId1v
 N4V9fByxQJkbnpsiSa39319EktVseF7Q/DGNoRkAz38ZsaKaFxsHKDue7qeZNsiKOGsl9gFeM
 kX3sVqfJ3EpDhp9Hkktst/ZgexwhFH6YMPIHqxbNcs5bWx7CR9PTyqSr5G6eqCUS5/UU8VHds
 Vrpg1cUmbAdoF5EH0vNR5gguhCf2vXtZgDD36/UixmUY2tLeL/w1ex0oC3I94esE4BtqwajYx
 b9Nsj/embKPwKk8opLFo9+VONNV4pp0BpklUDT+z6CVxn4Rh0bB2D1P13fm8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_093702_613314_78A71806 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2VyZ2V5LAoKQW0gMjAuMDkuMTkgdW0gMTI6MTUgc2NocmllYiBTZXJnZXkgQnJ1dHlhbjoK
PiBEZWFyIGFsbCB3ZSBhcmUgY29tcGFueSBvZiBoYXJkL3NvZnQgZGVzaWduIGFuZCBpbnRlZ3Jh
dGlvbiBtb3N0bHkgYmFzZWQKPiBvbiBBUk0gY29yZXMuCj4gV2UgYXJlIGN1cnJlbnRseSB3b3Jr
aW5nIG9uIExpYnJlIExpbnV4IGRldmVsb3BtZW50IGZvciBBUk0gYmFzZWQgU0JDLgo+Cj4gQW5k
IHJlYWR5IHRvIHB1dCBwcm9mZXNzaW9uYWwgZWZmb3J0IGZvciBoYXZpbmcgY29tcGxldGUgYmxv
Yi1mcmVlIExpbnV4Cj4ga2VybmVsLCBhcyB3ZSBoYXZlIGRvbmUgcmVzZWFyY2ggdGhlcmUgaXMg
bW9zdCBwcm9ibGVtIHdpdGggYm9vdGxvYWRlcnMKPiBhbmQgTWFsaSBvciBQb3dlclZSIEdQVSB1
bml0cyBpbiBTb0MuCj4KPiBXZSBhcmUgbG9va2luZyBmb3J3YXJkIHRvIGNvb3BlcmF0ZSBhbmTC
oCBub3cgaGF2ZSBzZXZlcmFsIG5lZWQgb2YKPiBpbmZvcm1hdGlvbi4KPgo+IENhbiB5b3Ugc2Vu
ZCB1cyBsaXN0IGZvciBibG9iIGRyaXZlcnMgZm9yIHRoaXMgU29DOgo+Cj4gwqDCoMKgIEFsbHdp
bm5lciBBMjAKPiDCoMKgwqAgQWxsd2lubmVyIFI0MAo+IMKgwqDCoCBCcm9hZGNvbSBCQ00yODM3
CgpoZXJlIGlzIHRoZSBsaXN0IGZvciBMaW51eCA1LjM6CgpjcHVmcmVxL3Jhc3BiZXJyeXBpLWNw
dWZyZXEuYwpncGlvL2dwaW8tcmFzcGJlcnJ5cGktZXhwLmMKY2xrL2JjbS9jbGstcmFzcGJlcnJ5
cGkuYwpzdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1hdWRpby9iY20yODM1LXBjbS5jCnN0
YWdpbmcvdmMwNF9zZXJ2aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5jCnN0YWdp
bmcvdmMwNF9zZXJ2aWNlcy9iY20yODM1LWNhbWVyYS9tbWFsLXZjaGlxLmMKZmlybXdhcmUvcmFz
cGJlcnJ5cGkuYwpod21vbi9yYXNwYmVycnlwaS1od21vbi5jCnNvYy9iY20vcmFzcGJlcnJ5cGkt
cG93ZXIuYyAoKikKCigqKSBUaGVyZSBpcyBhbHJlYWR5IGEgYmxvYi1mcmVlIGRyaXZlciBjYWxs
ZWQgc29jL2JjbS9iY20yODM1LXBvd2VyLmMsCmJ1dCBpdCBzdGlsbCBuZWVkcyBpbXByb3ZlbWVu
dHMuCgpTaW5jZSB0aGUgQVJNIGNvcmVzIGRvZXNuJ3QgaGF2ZSBmdWxsIGFjY2VzcywgaXQgbWF5
IG5vdCBwb3NzaWJsZSB0bwpyZXBsYWNlIGFsbCB0aGVzZSBkcml2ZXJzLiBBbiBhbHRlcm5hdGl2
ZSBhcHByb2FjaCBmb3IgYmxvYi1mcmVlbmVzcyBvbgpCQ00yODM3IHdvdWxkIGJlIGFuIG9wZW4g
VkM0IGZpcm13YXJlIFsxXS4KClsxXSAtIGh0dHBzOi8vZ2l0aHViLmNvbS9jaHJpc3RpbmFhL3Jw
aS1vcGVuLWZpcm13YXJlCgpHb29kIGx1Y2sKClN0ZWZhbgoKPiDCoMKgwqAgUmVhbHRlayBSVEQx
Mzk1Cj4gwqDCoMKgIE1lZGlhVGVrIE1UNzYyM04KPgo+Cj4gQW5kIGFsc28gcGxlYXNlIG9mZmVy
IHVzIHdoaWNoIGlzIHRoZSBiZXN0IFNvQyBmb3IgYmxvYi1mcmVlIGxpbnV4Cj4gZGV2ZWxvcG1l
bnQuCj4KPiBCZXN0IHJlZ2FyZHMuIFNlcmdleS4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
