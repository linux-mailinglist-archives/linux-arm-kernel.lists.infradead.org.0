Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FE81FF296
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7azaoDxm9XcoS/5MoA0F1AXa3RCtoQ697dyH2wTGoaQ=; b=WOH0XHryaynYts
	UOCXoq4C1Q845bb48/n6M+wnEvGXTDNV58VhItAxx2LWUOFZYuqsrWyjj59umsPO/PphtAfXC0eYV
	ZXUM9it8IjLICY66gEtt6OHcXNfZYe81yMNho/SBoPap7XYZLuG75RYLd5JpPcdCyBkKR9dRDpFBC
	cjyOlZvgfWdWy/b4ikMDBVl/ZELS/EfE8s/iRsLCr7VflMKUw7kIrxpKmwj96F2dNxCp+Otbzz66y
	obJ8Wm/NrRzxe9RLFVbh4Vfz3FmQq5eKTWAMrTcoJEarsGDXx1HIzScsT2NRhO8VPh49n8ezG/tDv
	BpeshwtO9RobIbi7P67A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluD4-0008N0-D9; Thu, 18 Jun 2020 13:04:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluCu-0008Lg-Hs
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:03:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9408F101E;
 Thu, 18 Jun 2020 06:03:45 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.17.127])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3600B3F71F;
 Thu, 18 Jun 2020 06:03:43 -0700 (PDT)
Date: Thu, 18 Jun 2020 14:03:32 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
Message-ID: <20200618130332.GA53391@C02TD0UTHF1T.local>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
 <20200526102611.GA1363@C02TD0UTHF1T.local>
 <1e57ec27-1d54-c7cd-5e5b-6c0cc47f9891@windriver.com>
 <20200527151928.GC59947@C02TD0UTHF1T.local>
 <cd66a2e4-c953-8b09-b775-d982bb1be47a@windriver.com>
 <20200528075418.GB22156@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528075418.GB22156@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_060353_317920_4981D26E 
X-CRM114-Status: GOOD (  27.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jiping Ma <Jiping.Ma2@windriver.com>, zhe.he@windriver.com,
 bruce.ashfield@gmail.com, yue.tao@windriver.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, paul.gortmaker@windriver.com,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDg6NTQ6MTlBTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDk6MDY6MDdBTSArMDgwMCwgSmlwaW5nIE1h
IHdyb3RlOgo+ID4gT24gMDUvMjcvMjAyMCAxMToxOSBQTSwgTWFyayBSdXRsYW5kIHdyb3RlOgo+
ID4gPiBPbiBXZWQsIE1heSAyNywgMjAyMCBhdCAwOTozMzowMEFNICswODAwLCBKaXBpbmcgTWEg
d3JvdGU6Cj4gPiA+ID4gT24gMDUvMjYvMjAyMCAwNjoyNiBQTSwgTWFyayBSdXRsYW5kIHdyb3Rl
Ogo+ID4gPiA+ID4gT24gTW9uLCBNYXkgMTEsIDIwMjAgYXQgMTA6NTI6MDdBTSArMDgwMCwgSmlw
aW5nIE1hIHdyb3RlOgo+ID4gPiA+IFRoaXMgbW9kaWZpY2F0aW9uIGNhbiBub3QgZml4IG91ciBp
c3N1ZSzDr8K/wr0gd2UgbmVlZAo+ID4gPiA+IHBlcmZfcmVnX2FiaShjdXJyZW50KSA9PSBQRVJG
X1NBTVBMRV9SRUdTX0FCSV8zMiB0byBqdWRnZSBpZiBpdCBpcyAzMi1iaXQKPiA+ID4gPiB0YXNr
IG9yIG5vdCwKPiA+ID4gPiB0aGVuIHJldHVybiB0aGUgY29ycmVjdCBQQyB2YWx1ZS4KPiA+ID4g
SSBtdXN0IGJlIG1pc3Npbmcgc29tZXRoaW5nIGhlcmUuCj4gPiA+IAo+ID4gPiBUaGUgY29yZSBj
b2RlIHBlcmZfcmVnX2FiaSh0YXNrKSBpcyBjYWxsZWQgd2l0aCB0aGUgdGFzayBiZWluZyBzYW1w
bGVkLAo+ID4gPiBhbmQgdGhlIHJlZ3MgYXJlIGZyb20gdGhlIHRhc2sgYmVpbmcgc2FtcGxlZC4g
Rm9yIGEgdXNlcnNwYWNlIHNhbXBsZSBmb3IKPiA+ID4gYSBjb21wYXQgdGFzaywgY29tcGF0X3Vz
ZXJfbW9kZShyZWdzKSBzaG91bGQgYmUgZXF1aXZhbGVudCB0byB0aGUKPiA+ID4gaXNfY29tcGF0
X3RocmVhZCh0YXNrX3RocmVhZF9pbmZvKHRhc2spKSBjaGVjay4KPiA+ID4gCj4gPiA+IFdoYXQg
YW0gSSBtaXNzaW5nPwo+ID4gVGhpcyBpc3N1ZSBjYXVzZWQgYnkgUEMgdmFsdWUgaXMgbm90IGNv
cnJlY3QuIHJlZ3MgYXJlIHNhbXBsZWQgaW4gZnVuY3Rpb24KPiA+IHBlcmZfb3V0cHV0X3NhbXBs
ZV9yZWdzLCB0aGF0IGNhbGwgcGVyZl9yZWdfdmFsdWUocmVncywgYml0KSB0byBnZXQgUEMKPiA+
IHZhbHVlLgo+ID4gUEMgdmFsdWUgaXMgcmVnc1sxNV0gaW4gcGVyZl9yZWdfdmFsdWUoKSBmdW5j
dGlvbi4gaXQgc2hvdWxkIGJlIHJlZ3NbMzJdLgo+ID4gCj4gPiBwZXJmX291dHB1dF9zYW1wbGVf
cmVncyhzdHJ1Y3QgcGVyZl9vdXRwdXRfaGFuZGxlICpoYW5kbGUsCj4gPiDDr8K/wr3Dr8K/wr3D
r8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/
wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3D
r8K/wr3Dr8K/wr0gc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIHU2NCBtYXNrKQo+ID4gewo+ID4gw6/C
v8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9IGludCBiaXQ7Cj4gPiDDr8K/
wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr0gREVDTEFSRV9CSVRNQVAoX21h
c2ssIDY0KTsKPiA+IAo+ID4gw6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/C
v8K9IGJpdG1hcF9mcm9tX3U2NChfbWFzaywgbWFzayk7Cj4gPiDDr8K/wr3Dr8K/wr3Dr8K/wr3D
r8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr0gZm9yX2VhY2hfc2V0X2JpdChiaXQsIF9tYXNrLCBzaXpl
b2YobWFzaykgKiBCSVRTX1BFUl9CWVRFKSB7Cj4gPiDDr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3D
r8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/
wr3Dr8K/wr0gdTY0IHZhbDsKPiA+IAo+ID4gw6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9
w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/Cv8K9w6/C
v8K9IHZhbCA9IHBlcmZfcmVnX3ZhbHVlKHJlZ3MsIGJpdCk7Cj4gPiDDr8K/wr3Dr8K/wr3Dr8K/
wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3Dr8K/wr3D
r8K/wr3Dr8K/wr3Dr8K/wr0gcGVyZl9vdXRwdXRfcHV0KGhhbmRsZSwgdmFsKTsKPiA+IMOvwr/C
vcOvwr/CvcOvwr/CvcOvwr/CvcOvwr/CvcOvwr/CvcOvwr/CvSB9Cj4gPiB9Cj4gCj4gWWVzLCBi
dXQgTWFyaydzIHBvaW50IGlzIHRoYXQgY2hlY2tpbmcgJ2NvbXBhdF91c2VyX21vZGUocmVncykn
IHNob3VsZCBiZQo+IGV4YWN0bHkgdGhlIHNhbWUgYXMgY2hlY2tpbmcgJ3BlcmZfcmVnX2FiaShj
dXJyZW50KSA9PSBQRVJGX1NBTVBMRV9SRUdTX0FCSV8zMicuCj4gQXJlIHlvdSBzYXlpbmcgdGhh
dCdzIG5vdCB0aGUgY2FzZT8gSWYgc28sIHBsZWFzZSBjYW4geW91IHByb3ZpZGUgYW4gZXhhbXBs
ZQo+IG9mIHdoZW4gdGhleSBhcmUgZGlmZmVyZW50Pwo+IAo+IExlYXZpbmcgdGhhdCBhc2lkZSBm
b3IgYSBzZWNvbmQsIEkgYWxzbyB0aGluayBpdCdzIHJlYXNvbmFibGUgdG8gcXVlc3Rpb24KPiB3
aGV0aGVyIHRoaXMgd2hvbGUgaW50ZXJmYWNlIGlzIGJ1c3RlZCBvciBub3QuIEkgbG9va2VkIGF0
IGl0IGxhc3QgbmlnaHQgYnV0Cj4gc3RydWdnbGVkIHRvIHdvcmsgb3V0IHdoYXQgaXQncyBzdXBw
b3NlZCB0byBkby4gQ29uc2lkZXIgdGhlc2UgdGhyZWUKPiBzY2VuYXJpb3MsIGFsbCB1bmRlciBh
biBhcm02NCBrZXJuZWw6Cj4gCj4gICAxLiA2NC1iaXQgcGVyZiArIDY0LWJpdCBhcHBsaWNhdGlv
biBiZWluZyBwcm9maWxlZAo+ICAgMi4gNjQtYml0IHBlcmYgKyAzMi1iaXQgYXBwbGljYXRpb24g
YmVpbmcgcHJvZmlsZWQKPiAgIDMuIDMyLWJpdCBwZXJmICsgMzItYml0IGFwcGxpY2F0aW9uIGJl
aW5nIHByb2ZpbGVkCj4gCj4gSXQgbG9va3MgbGlrZSB0aGUgY3VycmVudCBjb2RlIGlzIGEgYm9k
Z2UgdG8gdHJ5IHRvIGhhbmRsZSBib3RoICgyKSBhbmQKPiAoMykgYXQgdGhlIHNhbWUgdGltZToK
PiAKPiAgIC0gSW4gY2FzZSAoMyksIHVzZXJzcGFjZSBvbmx5IGFza3MgYWJvdXQgcmVnaXN0ZXJz
IDAtMTUKPiAgIC0gSW4gY2FzZSAoMiksIHdlIGZ1ZGdlIHRoZSBoaWdoZXIgcmVnaXN0ZXJzIHNv
IHRoYXQgNjQtYml0IFNQIGFuZCBMUgo+ICAgICBob2xkIHRoZSAzMi1iaXQgdmFsdWVzIGFzIGEg
Ym9kZ2UgdG8gYWxsb3cgYSA2NC1iaXQgZHdhcmYgdW53aW5kZXIKPiAgICAgdG8gdW53aW5kIHRo
ZSBzdGFjawoKSSB0aGluayB0aGUgZnVkZ2luZyBpcyBub25zZW5zaWNhbCB0byBiZWdpbiB3aXRo
LCBhcyBJIHdvdWxkIGhhdmUKZXhwZWN0ZWQgdGhhdCBQRVJGX1JFR1NfQUJJXzMyIHNob3VsZCBi
ZSB0aGUgc2FtZSBsYXlvdXQgcmVnYXJkbGVzcyBvZgpjb25zdW1lciAoYW5kIHRoZXJlZm9yZSBz
aG91bGQgYmUgaWRlbnRpY2FsIHRvIHRoZSAzMi1iaXQgYXJtIG5hdGl2ZQpmb3JtYXQpLiBJIHJl
YWxpc2UgdGhhdCBkb2Vzbid0IGNoYW5nZSB0aGF0IHdlIG1pZ2h0IGJlIHN0dWNrIHdpdGggaXQu
Li4KCj4gU28gdGhlIGlkZWEgYmVoaW5kIHRoZSBwYXRjaCBsb29rcyBmaW5lIGJlY2F1c2UgY2Fz
ZSAoMykgaXMgZXhwZWN0aW5nIHRoZSBQQwo+IGluIHJlZ2lzdGVyIDE1IGFuZCBpbnN0ZWFkIGdl
dHMgMCwgYnV0IHRoZSB0ZW1wdGF0aW9uIGlzIHRvIGNsZWFuIHRoaXMgdXAgc28KPiB0aGF0IGNh
c2VzICgyKSBhbmQgKDMpIHJlcG9ydCB0aGUgc2FtZSBkYXRhIHRvIHVzZXJzcGFjZSAoYWxvbmcg
dGhlIGxpbmVzIG9mCj4gTWFyaydzIHBhdGNoKSwgbmFtZWx5IG9ubHkgdGhlIGZpcnN0IDE2IHJl
Z2lzdGVycyB3aXRoIHRoZSBQQyBtb3ZlZCBkb3duLiBXZQo+IGNhbiBvbmx5IGRvIHRoYXQgaWYg
dGhlIHVud2luZGVyIGlzIGhhcHB5LCB3aGljaCBpdCBtaWdodCBiZSBpZiBpdCBvbmx5IGV2ZXIK
PiBsb29rcyB1cCBkd2FyZiByZWdpc3RlciBudW1iZXJzIGJhc2VkIG9uIHRoZSB1bndpbmQgdGFi
bGVzIGluIHRoZSBiaW5hcnkuCj4gU29tZWJvZHkgd291bGQgbmVlZCB0byBkaWcgaW50byB0aGF0
LgoKQWdyZWVkOyBJIHdpbGwgdHJ5IHRvIGZpZ3VyZSBvdXQgd2hhdCB0aGUgcGVyZiB0b29sIGRv
ZXMgaW4gdGhlIHRocmVlCmNhc2VzIGFib3ZlLiBJIHdvdWxkIGJlIGdyYXRlZnVsIGlmIG90aGVy
cyBjb3VsZCB0YWtlIGEgbG9vayB0b28uCgpBbm90aGVyIHNsaWdodGx5IHNjYXJ5IHRob3VnaHQ6
IHdoYXQgaGFwcGVucyBmb3IgYSAzMi1iaXQgcGVyZiB3aXRoIGEKNjQtYml0IGFwcGxpY2F0aW9u
IGJlaW5nIHByb2ZpbGVkPyBJIGRvbid0IHNlZSBob3cgdGhhdCdkIGJlIGZvcmJpZGRlbiwKYnV0
IEkgYWxzbyBkb24ndCBzZWUgaG93IGl0J2Qgd29yay4KCj4gT3RoZXJ3aXNlLCBpZiBpdCBnZW5l
cmF0ZXMgdW5jb25kaXRpb25hbCByZWZlcmVuY2VzIHRvIHRoaW5ncyBsaWtlCj4gcmVnaXN0ZXIg
MzAgdG8gZ3JhYiB0aGUgbGluayByZWdpc3RlciwgdGhlbiB3ZSdyZSBzdHVjayB3aXRoIHRoZSBi
b2RnZQo+IGFuZCBuZWVkIHRvIHNwZWNpYWwtY2FzZSB0aGUgUEMuCgpJIGFncmVlIHRoYXQgaW4g
dGhhdCBjYXNlIHdlJ2QgaGF2ZSB0byBrZWVwIHRoZSBleGlzdGluZyBib2RnZSwgYW5kIHdlJ2QK
aGF2ZSB0byBzcGVjaWFsLWNhc2UgdGhlIFBDLCBidXQgSSdkIHByZWZlciB0byBzcGxpdCB0aGUg
bG9naWMgZm9yIGNhc2UKMSBpbnRvIGEgc2VwYXJhdGUgZnVuY3Rpb24gZm9yIGNhc2VzIDIgYW5k
IDMgc28gdGhhdCB3ZSBjYW4gbW9yZSBlYXNpbHkKYXZvaWQgZ2V0dGluZyB0aGlzIG1vcmUgY29u
ZnVzZWQuCgpMZXQncyBmaWd1cmUgb3V0IHdoYXQgdXNlcnNwYWNlIGRvZXMgZmlyc3QuLi4KClRo
YW5rcywKTWFyay4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
