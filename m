Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB37149271
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 01:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rg3kG/u0jCfDN6iJDRseUkUDoi54XGp+TRAMaeC37Ug=; b=QvyoQWTS8gtXES
	8Lc4Tjd1sDu98pPWf+J/GTFW8PySlaPYm2Sjw+sovlUGYr/dQ2LHVM41GaKgGsnrP3kZvMIBe6pDd
	+5VFwTaEgvULNhwsXXPqumnY6AQknT52MiyM6jId9A0cXt7B2njevdYNjsiVcIFH2zvTugIkEe+4/
	7sOEc3xIbGYIc50H9O6r1rKd0xd0ZggndRrCpVeYBT1Wl3aTPpurqN7NVoZgExwhYKP6IqJ05Bckv
	ai2TMDyXaZViSAcNF7CwpZ/KsWmNz1YdddKWKs6yoWOBzIhBZ79yxl63exHIbRkKPnA0mQT9sqKbw
	3jWL9m08nWZKytQAFR6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv9lN-0001DW-03; Sat, 25 Jan 2020 00:57:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv9lD-0001CR-1P
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 00:57:16 +0000
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net
 [50.39.105.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D40442071E;
 Sat, 25 Jan 2020 00:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579913833;
 bh=7jt0GTJ/WTvnJW0J0lj3B8HCo6k1PQjNhvzflXBV4Tk=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=p2zHxPE5tfiNPi2OhmhFXsfhjkb6uZL1MmWFtLvtH2bHlq5/tAqcHCSP2TZe7SDkn
 3iI69TItHEfO9zhVah9QIqJaHhMn6rGJOIRtvf1kNaBL232FKwpOvMViCH4EG9f1R4
 /Cbm/Lyzh+kK/9ABYtItJ/s72k1nCeBSgG6Of1Bs=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id A729D352018E; Fri, 24 Jan 2020 16:57:13 -0800 (PST)
Date: Fri, 24 Jan 2020 16:57:13 -0800
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
Message-ID: <20200125005713.GZ2935@paulmck-ThinkPad-P72>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200124222434.GA7196@paulmck-ThinkPad-P72>
 <6AAE7FC6-F5DE-4067-8BC4-77F27948CD09@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6AAE7FC6-F5DE-4067-8BC4-77F27948CD09@oracle.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_165715_127220_2A339795 
X-CRM114-Status: GOOD (  33.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: paulmck@kernel.org
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, bp@alien8.de, hpa@zytor.com,
 Waiman Long <longman@redhat.com>, tglx@linutronix.de,
 daniel.m.jordan@oracle.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMjQsIDIwMjAgYXQgMDY6Mzk6MDJQTSAtMDUwMCwgQWxleCBLb2dhbiB3cm90
ZToKPiBIaSwgUGF1bC4KPiAKPiBUaGFua3MgZm9yIHJ1bm5pbmcgdGhvc2UgZXhwZXJpbWVudHMh
Cj4gCj4gPiBPbiBKYW4gMjQsIDIwMjAsIGF0IDU6MjQgUE0sIFBhdWwgRS4gTWNLZW5uZXkgPHBh
dWxtY2tAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9uIFR1ZSwgSmFuIDE0LCAyMDIwIGF0
IDEwOjU5OjE1UE0gLTA1MDAsIEFsZXggS29nYW4gd3JvdGU6Cj4gPj4gTWlub3IgY2hhbmdlcyBm
cm9tIHY4IGJhc2VkIG9uIGZlZWRiYWNrIGZyb20gTG9uZ21hbjoKPiA+PiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4+IAo+ID4+IC0gQWRk
IF9faW5pdCB0byBjbmFfY29uZmlndXJlX3NwaW5fbG9ja19zbG93cGF0aCgpLgo+ID4+IAo+ID4+
IC0gRml4IHRoZSBjb21tZW50IGZvciBjbmFfc2Nhbl9tYWluX3F1ZXVlKCkuCj4gPj4gCj4gPj4g
LSBDaGFuZ2UgdGhlIHR5cGUgb2YgaW50cmFfbm9kZV9oYW5kb2ZmX3RocmVzaG9sZCB0byB1bnNp
Z25lZCBpbnQuCj4gPj4gCj4gPj4gCj4gPj4gU3VtbWFyeQo+ID4+IC0tLS0tLS0KPiA+PiAKPiA+
PiBMb2NrIHRocm91Z2hwdXQgY2FuIGJlIGluY3JlYXNlZCBieSBoYW5kaW5nIGEgbG9jayB0byBh
IHdhaXRlciBvbiB0aGUKPiA+PiBzYW1lIE5VTUEgbm9kZSBhcyB0aGUgbG9jayBob2xkZXIsIHBy
b3ZpZGVkIGNhcmUgaXMgdGFrZW4gdG8gYXZvaWQKPiA+PiBzdGFydmF0aW9uIG9mIHdhaXRlcnMg
b24gb3RoZXIgTlVNQSBub2Rlcy4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIENOQQo+ID4+IChjb21w
YWN0IE5VTUEtYXdhcmUgbG9jaykgYXMgdGhlIHNsb3cgcGF0aCBmb3IgcXNwaW5sb2NrLiBJdCBp
cwo+ID4+IGVuYWJsZWQgdGhyb3VnaCBhIGNvbmZpZ3VyYXRpb24gb3B0aW9uIChOVU1BX0FXQVJF
X1NQSU5MT0NLUykuCj4gPj4gCj4gPj4gQ05BIGlzIGEgTlVNQS1hd2FyZSB2ZXJzaW9uIG9mIHRo
ZSBNQ1MgbG9jay4gU3Bpbm5pbmcgdGhyZWFkcyBhcmUKPiA+PiBvcmdhbml6ZWQgaW4gdHdvIHF1
ZXVlcywgYSBtYWluIHF1ZXVlIGZvciB0aHJlYWRzIHJ1bm5pbmcgb24gdGhlIHNhbWUKPiA+PiBu
b2RlIGFzIHRoZSBjdXJyZW50IGxvY2sgaG9sZGVyLCBhbmQgYSBzZWNvbmRhcnkgcXVldWUgZm9y
IHRocmVhZHMKPiA+PiBydW5uaW5nIG9uIG90aGVyIG5vZGVzLiBUaHJlYWRzIHN0b3JlIHRoZSBJ
RCBvZiB0aGUgbm9kZSBvbiB3aGljaAo+ID4+IHRoZXkgYXJlIHJ1bm5pbmcgaW4gdGhlaXIgcXVl
dWUgbm9kZXMuIEFmdGVyIGFjcXVpcmluZyB0aGUgTUNTIGxvY2sgYW5kCj4gPj4gYmVmb3JlIGFj
cXVpcmluZyB0aGUgc3BpbmxvY2ssIHRoZSBsb2NrIGhvbGRlciBzY2FucyB0aGUgbWFpbiBxdWV1
ZQo+ID4+IGxvb2tpbmcgZm9yIGEgdGhyZWFkIHJ1bm5pbmcgb24gdGhlIHNhbWUgbm9kZSAocHJl
LXNjYW4pLiBJZiBmb3VuZCAoY2FsbAo+ID4+IGl0IHRocmVhZCBUKSwgYWxsIHRocmVhZHMgaW4g
dGhlIG1haW4gcXVldWUgYmV0d2VlbiB0aGUgY3VycmVudCBsb2NrCj4gPj4gaG9sZGVyIGFuZCBU
IGFyZSBtb3ZlZCB0byB0aGUgZW5kIG9mIHRoZSBzZWNvbmRhcnkgcXVldWUuICBJZiBzdWNoIFQK
PiA+PiBpcyBub3QgZm91bmQsIHdlIG1ha2UgYW5vdGhlciBzY2FuIG9mIHRoZSBtYWluIHF1ZXVl
IGFmdGVyIGFjcXVpcmluZyAKPiA+PiB0aGUgc3BpbmxvY2sgd2hlbiB1bmxvY2tpbmcgdGhlIE1D
UyBsb2NrIChwb3N0LXNjYW4pLCBzdGFydGluZyBhdCB0aGUKPiA+PiBub2RlIHdoZXJlIHByZS1z
Y2FuIHN0b3BwZWQuIElmIGJvdGggc2NhbnMgZmFpbCB0byBmaW5kIHN1Y2ggVCwgdGhlCj4gPj4g
TUNTIGxvY2sgaXMgcGFzc2VkIHRvIHRoZSBmaXJzdCB0aHJlYWQgaW4gdGhlIHNlY29uZGFyeSBx
dWV1ZS4gSWYgdGhlCj4gPj4gc2Vjb25kYXJ5IHF1ZXVlIGlzIGVtcHR5LCB0aGUgTUNTIGxvY2sg
aXMgcGFzc2VkIHRvIHRoZSBuZXh0IHRocmVhZCBpbiB0aGUKPiA+PiBtYWluIHF1ZXVlLiBUbyBh
dm9pZCBzdGFydmF0aW9uIG9mIHRocmVhZHMgaW4gdGhlIHNlY29uZGFyeSBxdWV1ZSwgdGhvc2UK
PiA+PiB0aHJlYWRzIGFyZSBtb3ZlZCBiYWNrIHRvIHRoZSBoZWFkIG9mIHRoZSBtYWluIHF1ZXVl
IGFmdGVyIGEgY2VydGFpbgo+ID4+IG51bWJlciBvZiBpbnRyYS1ub2RlIGxvY2sgaGFuZC1vZmZz
Lgo+ID4+IAo+ID4+IE1vcmUgZGV0YWlscyBhcmUgYXZhaWxhYmxlIGF0IGh0dHBzOi8vdXJsZGVm
ZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fYXJ4aXYub3JnX2Fic18xODEw
LjA1NjAwJmQ9RHdJQkFnJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJ
X0puRSZyPUh2aGszRjRvbWRDay1HRTFQVE9tM0tuMEE3QXBXT1oyYVpMVHVWeEZLNGsmbT0xS1VH
R1pZVEhuUTI1ZmdSRnBwZE52cEpmSTByT09fVXNkdTE4UkR1XzE0JnM9RjEybmhIdXR3blBOdF9U
UTJFTEVSMERodHNIbEVJOUVpVzFuRFBobTUtWSZlPSA8aHR0cHM6Ly91cmxkZWZlbnNlLnByb29m
cG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19hcnhpdi5vcmdfYWJzXzE4MTAuMDU2MDAmZD1E
d0lCQWcmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9SHZo
azNGNG9tZENrLUdFMVBUT20zS24wQTdBcFdPWjJhWkxUdVZ4Rks0ayZtPTFLVUdHWllUSG5RMjVm
Z1JGcHBkTnZwSmZJMHJPT19Vc2R1MThSRHVfMTQmcz1GMTJuaEh1dHduUE50X1RRMkVMRVIwRGh0
c0hsRUk5RWlXMW5EUGhtNS1ZJmU9PiAuCj4gPj4gCj4gPj4gVGhlIHNlcmllcyBhcHBsaWVzIG9u
IHRvcCBvZiB2NS41LjAtcmM2LCBjb21taXQgYjNhOTg3YjAyNi4KPiA+PiBQZXJmb3JtYW5jZSBu
dW1iZXJzIGFyZSBhdmFpbGFibGUgaW4gcHJldmlvdXMgcmV2aXNpb25zCj4gPj4gb2YgdGhlIHNl
cmllcy4KPiA+PiAKPiA+PiBGdXJ0aGVyIGNvbW1lbnRzIGFyZSB3ZWxjb21lIGFuZCBhcHByZWNp
YXRlZC4KPiA+IAo+ID4gSSByYW4gdGhpcyBvbiBhIGxhcmdlIHN5c3RlbSB3aXRoIGEgdmVyc2lv
biBvZiBsb2NrdG9ydHVyZSB0aGF0IHdhcwo+ID4gbW9kaWZpZWQgdG8gcHJpbnQgb3V0IHRoZSBt
YXhpbXVtIGFuZCBtaW5pbXVtIHBlci1DUFUgbG9jay1hY3F1aXNpdGlvbgo+ID4gY291bnRzLCBh
bmQgd2l0aCBDUFUgaG90cGx1ZyBkaXNhYmxlZC4gIEkgYWxzbyBtb2RpZmllZCB0aGUgTE9DSzAx
IGFuZAo+ID4gTE9DSzA0IHNjZW5hcmlvcyB0byB1c2UgMjIwIGhhcmR3YXJlIHRocmVhZHMuCj4g
PiAKPiA+IEhlcmUgaXMgd2hhdCB0aGUgdGVzdCBlbmRlZCB1cCB3aXRoIGF0IHRoZSBlbmQgb2Yg
YSBvbmUtaG91ciBydW46Cj4gPiAKPiA+IExPQ0swMSAoZXhjbHVzaXZlKToKPiA+IFdyaXRlczog
IFRvdGFsOiAxMjQxMTA3MzMzICBNYXgvTWluOiA5MjA2OTYyLzYwOTAyID8/PyAgRmFpbDogMAo+
ID4gCj4gPiBMT0NLMDQgKHJ3bG9jayk6Cj4gPiBXcml0ZXM6ICBUb3RhbDogMjMyOTkxOTYzICBN
YXgvTWluOiAyNjMxNTc0Lzc0NTgyID8/PyAgRmFpbDogMAo+ID4gUmVhZHMgOiAgVG90YWw6IDIx
NjkzNTM4NiAgTWF4L01pbjogMjczNTkzOS8yODY2NSA/Pz8gIEZhaWw6IDAKPiA+IAo+ID4gVGhl
ICI/Pz8iIHN0cmluZ3MgYXJlIHByaW50ZWQgYmVjYXVzZSB0aGUgcmF0aW8gb2YgbWF4aW11bSB0
byBtaW5pbXVtIGV4Y2VlZHMKPiA+IGEgZmFjdG9yIG9mIHR3by4KPiBJcyB0aGlzIHdoYXQgeW91
IGV4cGVjdCAvIGhhdmUgc2VlbiB3aXRoIHRoZSBleGlzdGluZyBxc3BpbmxvY2s/Cj4gCj4gPiAK
PiA+IEkgYWxzbyByYW4gMzAtbWludXRlIHJ1bnMgb24gbXkgbGFwdG9wLCB3aGljaCBoYXMgMTIg
aGFyZHdhcmUgdGhyZWFkczoKPiA+IAo+ID4gTE9DSzAxIChleGNsdXNpdmUpOgo+ID4gV3JpdGVz
OiAgVG90YWw6IDM5OTIwNzI3ODIgIE1heC9NaW46IDI1OTM2ODc4Mi85NzIzMTk2MSA/Pz8gIEZh
aWw6IDAKPiA+IAo+ID4gTE9DSzA0IChyd2xvY2spOgo+ID4gV3JpdGVzOiAgVG90YWw6IDEzMTA2
Mzg5MiAgTWF4L01pbjogMTMxMzYyMDYvNTg3NjE1NyA/Pz8gIEZhaWw6IDAKPiA+IFJlYWRzIDog
IFRvdGFsOiAxNDQ4NzY4MDEgIE1heC9NaW46IDE5OTk5NTM1LzQ4NzM0NDIgPz8/ICBGYWlsOiAw
Cj4gSSBhc3N1bWUgdGhlIHN5c3RlbSBhYm92ZSBpcyBtdWx0aS1zb2NrZXQsIGJ1dCB5b3VyIGxh
cHRvcCBpcyBwcm9iYWJseSBub3Q/Cj4gCj4gSWYgdGhhdOKAmXMgdGhlIGNhc2UsIENOQSBzaG91
bGQgbm90IGJlIGVuYWJsZWQgb24geW91ciBsYXB0b3AgKGdyZXAKPiBrZXJuZWwgbG9ncyBmb3Ig
IkVuYWJsaW5nIENOQSBzcGlubG9ja+KAnSB0byBiZSBzdXJlKS4KPiAKPiA+IAo+ID4gVGhlc2Ug
YWxzbyBleGNlZWQgdGhlIGZhY3Rvci1vZi10d28gY3V0b2ZmLCBidXQgbm90IGFzIGRyYW1hdGlj
YWxseS4KPiA+IFRoZSByZWFkZXJzIGZvciB0aGUgcmVhZGVyLXdyaXRlciBsb2NrIGZhcmVkIHdv
cnN0LCB3aXRoIGEgNC10by0xIHJhdGlvLgo+ID4gCj4gPiBUaGVzZSB0ZXN0cyBkaWQgcnVuIHdp
dGhpbiBndWVzdCBPU2VzLgo+IFNvIEkgcmVhbGx5IHdvbmRlciBpZiBDTkEgd2FzIGVuYWJsZWQg
aGVyZSwgb3Igd2hldGhlciB0aGlzIGlzIHdoYXQgeW91IGdldAo+IHdpdGggcGFyYXZpcnQgcXNw
aW5sb2NrLgo+IAo+ID4gIElzIHRoYXQgY29uZmlndXJhdGlvbiBvdXQgb2YKPiA+IHNjb3BlIGZv
ciB0aGlzIGxvY2tpbmcgYWxnb3JpdGhtPyAgSW4gYWRkaXRpb24gKGFzIG1pZ2h0IHdlbGwgYWxz
byBoYXZlCj4gPiBiZWVuIHRoZSBjYXNlIGZvciB0aGUgbG9ja3RvcnR1cmUgcnVucyBpbiB5b3Vy
IHBhcGVyKSwgdGhlc2UgdGVzdHMgcnVuCj4gPiBhIHBhaXIgb2Ygc3RyZXNzLXRlc3QgdGFza3Mg
Zm9yIGVhY2ggaGFyZHdhcmUgdGhyZWFkLgo+ID4gCj4gPiBJcyB0aGlzIGV4cGVjdGVkIGJlaGF2
aW9yPwo+IFRoZSByZXN1bHRzIGRvIGFwcGVhciBza2V3ZWQgYSBiaXQgdG9vIG11Y2gsIGJ1dCBp
dCB3b3VsZCBiZSBoZWxwZnVsIHRvIGtub3cKPiB3aGF0IHFzcGlubG9jayB3ZSBhcmUgbG9va2lu
ZyBhdCwgYW5kIGhvdyB0aGV5IGNvbXBhcmUgdG8gdGhlIGV4aXN0aW5nIHFzcGlubG9jaywKPiBp
biBjYXNlIGl0IGlzIGluZGVlZCBDTkEuCgpZb3UgY2FsbGVkIGl0ISAgSSB3aWxsIHBsYXkgd2l0
aCBRRU1VJ3MgLW51bWEgYXJndW1lbnQgdG8gc2VlIGlmIEkgY2FuIGdldApDTkEgdG8gcnVuIGZv
ciBtZS4gIFBsZWFzZSBhY2NlcHQgbXkgYXBvbG9naWVzIGZvciB0aGUgZmFsc2UgYWxhcm0uCgoJ
CQkJCQkJVGhhbngsIFBhdWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
