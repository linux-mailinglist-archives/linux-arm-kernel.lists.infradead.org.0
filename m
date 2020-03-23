Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F6F18F973
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 17:16:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukx7jHhr+5DBAB/gQijqruIM4mrp4RHIgQb3uym4Q7o=; b=qSNRWL1oMIizSN
	loQ1yzUA55H+V8z9VECBkpNf1Z7doA9+mqpeOBz42wfcGaRoGgRliArjpUZ6dxaDw2kylt3PTua9E
	W33Xm40Wr8d+Slb+o4Bu/fUBVmN3+M9B9tm8W4VYDzfrEtq7LgqNUUqYl3Utk3ygrv/RJlVKIU01s
	INtuOUqaFC+dFxlmHHMMSoOZT8aOzNXCJfew9ilaOCb5vl5xy8lqCt6Co70JOHedZ67z97WrMoJIc
	IUim3vHT7EsGpodE/cZ86CCNMc9oPOSQR7m6maiCu3wpQQY4aTXusq3wLQGkl4gyJfPXPYG3KTmuf
	RkyrYIXlkGLdRd/dU6jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGPk0-0003lG-9w; Mon, 23 Mar 2020 16:15:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGPjr-0003kj-N0
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 16:15:45 +0000
Received: by mail-pg1-x544.google.com with SMTP id u12so7416407pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 09:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=xLwD/FbGk+fl6Ia4f9QV2q2Qg8OF8NvDOb/WEjHeVu8=;
 b=dAd67+xluNStPH4A7RmwpooNmZSRUGQuFCRPTWzplBUWQGqGTHYXGS0x4UgUGRPk4S
 7jemSrJFWPrerO4slWOrrvl4D3Ys0T7iRHDq7j3ENWlAwU8YZa88zTCZvIHNfxhWTyIT
 5qMWWhEZvj5mnQ2S1gTXn+UbWh7n0dNrnSHrZVfZhLE9OyEXsH1KE2N5YSbA6I9WK1FO
 aUvGXoR1yXSDMSQ+f0P7QoxkYGsyAXitduZHvp+vN/KdZwH780uIMNSQgsL/KWJO+teY
 4T1D4gV9SMYnABXrJuPSBiyp0bEBqHcC0PCHWU8PaVhBufcLNjevmwXtUZ5pdPfm9wrH
 ei0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=xLwD/FbGk+fl6Ia4f9QV2q2Qg8OF8NvDOb/WEjHeVu8=;
 b=flfR0KFo8x3OicjZ0szbryKH356zYkfD0rrb+xvqLhBfWgcxuoamNuFZ4hcfuCz6FJ
 65YZrhyLm8zvD333XYKt4gbmqC4MOHE8/5kMWCrYBktwLMMBGQpKjeowWFzHSob/5ONb
 iluLtrpPTjPwnfr2yoap06p3zpkcjgN3g2MI83jIFADrmXy+ksQhOXMMHebG0T4jW4N8
 2bcxTpEkeRxaQ5fkGyFR70dEXHot5PVGlM8bVbnKqxnzZn9+/UCtMeRuzV6t7paBCA5N
 +djUxoTgZHB5PenPbTa5m4NVILvQyD2PmmdDVUnTlJ7xdp+TmFWKoBJDpo4XLFssO5HA
 XcbQ==
X-Gm-Message-State: ANhLgQ2K+Ar4vcW0lMoigdUbEdROmktGgxgmUvOu7p8FmSGUCjlLsMEc
 YcHowBv71+XGDpemJ9B6rj0=
X-Google-Smtp-Source: ADFU+vsKdeRG2+FWZrh+QHftQfkLCC4yjakXhIm+XlCBS92GBEchwHs7nwReUv42QcfZw5w9tXnFyw==
X-Received: by 2002:a62:8202:: with SMTP id w2mr24688899pfd.117.1584980143016; 
 Mon, 23 Mar 2020 09:15:43 -0700 (PDT)
Received: from mail.google.com ([149.248.10.52])
 by smtp.gmail.com with ESMTPSA id mq18sm44939pjb.6.2020.03.23.09.15.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Mar 2020 09:15:42 -0700 (PDT)
Date: Mon, 23 Mar 2020 16:15:40 +0000
From: Changbin Du <changbin.du@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: Two questions about cache coherency on arm platforms
Message-ID: <20200323161537.ptjrihqotgmon7tr@mail.google.com>
References: <20200323123524.w67fici6oxzdo665@mail.google.com>
 <20200323131720.GE2597@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323131720.GE2597@C02TD0UTHF1T.local>
User-Agent: NeoMutt/20180716-508-7c9a6d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_091543_751601_3C1FD926 
X-CRM114-Status: GOOD (  26.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [changbin.du[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyaywKVGhhbmtzIGZvciB5b3VyIGFuc3dlci4gSSBzdGlsbCBkb24ndCB1bmRlcnN0YW5k
IHRoZSBmaXJzdCBxdWVzdGlvbi4KCk9uIE1vbiwgTWFyIDIzLCAyMDIwIGF0IDAxOjE3OjIwUE0g
KzAwMDAsIE1hcmsgUnV0bGFuZCB3cm90ZToKPiBPbiBNb24sIE1hciAyMywgMjAyMCBhdCAwODoz
NToyNlBNICswODAwLCBDaGFuZ2JpbiBEdSB3cm90ZToKPiA+IEhpLCBBbGwsCj4gPiBJIGFtIG5v
dCB2ZXJ5IGZhbWlsaWFyIHdpdGggQVJNIHByb2Nlc3NvcnMuIEkgaGF2ZSB0d28gcXVlc3Rpb25z
IGFib3V0Cj4gPiBjYWNoZSBjb2hlcmVuY3kuIENvdWxkIGFueW9uZSBoZWxwIG1lPwo+ID4gCj4g
PiAxLiBIb3cgaXMgY2FjaGUgY29oZXJlbmN5IG1haW50ZW5hbmNlZCBvbiBBUk12OCBiaWcuTElU
VExFIHN5c3RlbT8KPiA+IEFzIGZhciBhcyBJIGtub3csIGJpZyBjb3JlcyBhbmQgbGl0dGxlIGNv
cmVzIGFyZSBpbiBzZXBlcmF0ZSBjbHVzdGVycyBvbgo+ID4gYmlnLkxJVFRMRSBzeXN0ZW0uCj4g
Cj4gVGhpcyBpcyBvZnRlbiB0cnVlLCBidXQgbm90IGFsd2F5cyB0aGUgY2FzZS4gRm9yIGV4YW1w
bGUsIHdpdGggRFNVIGJpZwo+IGFuZCBsaXR0bGUgY29yZXMgY2FuIGJlIHBsYWNlZCB3aXRoaW4g
dGhlIHNhbWUgY2x1c3Rlci4KPgpZZXMsIGl0IGlzIHR1cmUgZm9yIER5bmFtSVEgdGhhdCBibCBj
b3JlcyBjYW4gYmUgcGxhY2VkIHdpdGhpbiB0aGUgc2FtZSBjbHVzdGVyLgpCdXQgSSBkb24ndCB1
bmRlcnN0YW5kIGhvdyBsaW51eCBzdXBwb3J0IGJpZy5MSVRUTEUgYmVmb3JlIER5bmFtSVEuCgpJ
IHJlYWQgYmVsb3cgZGVzY3JpcHRpb24gaW4gQVJNIENvcnRleC1BIFNlcmllcyBQcm9ncmFtbWVy
4oCZcyBHdWlkZSBmb3IKQVJNdjgtQS4KIHwgYmlnLkxJVFRMRSBzb2Z0d2FyZSBtb2RlbHMgcmVx
dWlyZSB0cmFuc3BhcmVudCBhbmQgZWZmaWNpZW50IHRyYW5zZmVyIG9mIGRhdGEgYmV0d2VlbiBi
aWcgYW5kIExJVFRMRSBjbHVzdGVycy4KIHwgQ29oZXJlbmN5IGJldHdlZW4gY2x1c3RlcnMgaXMg
cHJvdmlkZWQgYnkgYSBjYWNoZS1jb2hlcmVudCBpbnRlcmNvbm5lY3Qgc3VjaCBhcyB0aGUgQVJN
IENvcmVMaW5rIENDSS00MDAgZGVzY3JpYmVkIGluIENoYXB0ZXIgMTQuCgpTbyBJIHRoaW5rICBi
aWcgY29yZXMgYW5kIGxpdHRsZSBjb3JlcyBhcmUgaW4gZGlmZmVyZW50IGNsdXN0ZXJzIGluIHRo
aXMKY2FzZS4gVGhlbiB3ZSBhcmUgbm90IHdpdGhpbiB0aGUgc2FtZSBJbm5lciBTaGFyZWFibGUg
ZG9tYWluPwoKPiA+IEFuZCBjYWNoZSBjb2hlcmVuY2UgYmV0d3dlbiBjbHVzdGVycyByZXF1aXJl
cyB0aGUKPiA+IG1lbW9yeSByZWdpb25zIGFyZSBtYXJrZWQgYXMgJ091dGVyIFNoYXJlYWJsZScg
YW5kIGlzIHZlcnkgZXhwZW5zaXZlLgo+IAo+IFRoaXMgaXMgbm90IGNvcnJlY3QuCj4gCj4gTGlu
dXggcmVxdWlyZXMgdGhhdCBhbGwgY29yZXMgaXQgdXNlcyBhcmUgd2l0aGluIHRoZSBzYW1lIElu
bmVyCj4gU2hhcmVhYmxlIGRvbWFpbiwgcmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRoZXkgYXJlIGlu
IGRpc3RpbmN0IGNsdXN0ZXJzLgo+IExpbnV4IGRvZXMgbm90IHN1cHBvcnQgc3lzdGVtcyB3aGVy
ZSBjb3JlcyBhcmUgaW4gZGlzdGluY3QgSW5uZXIKPiBTaGFyZWFibGUgZG9tYWlucy4KPgpJIHNl
ZS4gVGhhbmtzLgoKPiBUaGlzIGlzIHRoZSBpbnRlbmRlZCB1c2Ugb2YgdGhlIGFyY2hpdGVjdHVy
ZS4gUGVyIEFSTSBEREkgMDQ4N0UuYSBwYWdlCj4gQjItMTQ0Ogo+IAo+IHwgVGhpcyBhcmNoaXRl
Y3R1cmUgYXNzdW1lcyB0aGF0IGFsbCBQRXMgdGhhdCB1c2UgdGhlIHNhbWUgb3BlcmF0aW5nCj4g
fCBzeXN0ZW0gb3IgaHlwZXJ2aXNvciBhcmUgaW4gdGhlIHNhbWUgSW5uZXIgU2hhcmVhYmxlIHNo
YXJlYWJpbGl0eQo+IHwgc2hhcmVhYmlsaXR5Cj4gCj4gLi4uIHdoZXJlIGEgUEUgaXMgYSAiUHJv
Y2Vzc2luZyBFbGVtZW50Iiwgd2hpY2ggeW91IGNhbiB0aGluayBvZiBhcyBhCj4gc2luZ2xlIGNv
cmUuCj4gCj4gPiBJIGhhdmUgY2hlY2tlZCB0aGUga2VybmVsIGNvZGUsIGFuZCBzZWVtcyBpdCBv
bmx5IHJlcXVpcmVzIGNvaGVyZW5jZSBpbgo+ID4gJ0lubmVyIFNoYXJlYWJsZScgZG9tYWluLiBT
byBteSBxdWVzdGlvbiBpcyBob3cgY2FuIGxpbnV4IGd1YXJhbnRlZXMKPiA+IGNhY2hlIGNvaGVy
ZW5jZSBpbiAnQ1BVIG1pZ3JhdGlvbicgb3IgJ0dsb2JhbCBUYXNrIFNjaGVkdWxpbmcnIG1vZGVs
cwo+ID4gd2ljaCBib3RoIGNsdXN0ZXJzIGFyZSBhY3RpdmUgYXQgdGhlIHNhbWUgdGltZT8gRm9y
IGV4YW1wbGUsIGEgdGhyZWFkCj4gPiByYW4gaW4gQ2x1c3RlciBBIGFuZCBtb2RpZmllZCAnSW5u
ZXIgU2hhcmVhYmxlJyBtZW1vcnksIHRoZW4gaXQgbWlncmF0ZXMKPiA+IHRvIENsdXN0ZXIgQi4K
PiAKPiBBcyBhYm92ZSwgdGhpcyB3b3JrcyBiZWNhdXNlIGFsbCB0aGUgcmVsZXZhbnQgY29yZXMg
YXJlIHdpdGhpbiB0aGUgc2FtZQo+IElubmVyIFNoYXJlYWJsZSBkb21haW4uCj4gCj4gPiAyLiBB
Uk02NCBjYWNoZSBtYWludGVuYW5jZSBjb2RlIHN5bmNfaWNhY2hlX2FsaWFzZXMoKSBmb3Igbm9u
LWFsaWFzaW5nIGljYWNoZS4KPiA+IEluIGxpbnV4IGtlcm5lbCBvbiBhcm02NCBwbGF0Zm9ybSwg
dGhlIGZsb3cgZnVuY3Rpb24gc3luY19pY2FjaGVfYWxpYXNlcygpCj4gPiBpcyB1c2VkIHRvIHN5
bmMgaS1jYWNoZSBhbmQgZC1jYWNoZS4gSSB1bmRlcnN0YW5kIHRoZSBhbGlhc2luZyBjYXNlLiBi
dXQKPiA+IGZvciBub24tYWxpYXNpbmcgY2FzZSB3aHkgaXQganVzdCBkb2VzICJkYyBjdmF1IiAo
aW4gX19mbHVzaF9pY2FjaGVfcmFuZ2UoKSkKPiA+IHdoaXRob3V0IHJlYWxseSBpbnZhbGlkYXRl
IHRoZSBpY2FjaGU/Cj4gCj4gVGhlIF9fZmx1c2hfaWNhY2hlX3JhbmdlL19fZmx1c2hfY2FjaGVf
dXNlcl9yYW5nZSBhc3NlbWJseSBmdW5jdGlvbiBkb2VzCj4gYm90aCB0aGUgRC1jYWNoZSBtYWlu
dGVuYW5jZSB3aXRoIERDIENWQVUsIHRoZW4gdGhlIEktY2FjaGUgbWFpbnRlbmFuY2UKPiB3aXRo
IElDIElWQVUsIHNvIEkgdGhpbmsgeW91IGhhdmUgbWlzcmVhZCBpdC4KPmEKWWVzLiBJIG1pc3Nl
ZCB0aGUgSUMgSVZBVSBpbnN0cnVjdGlvbiBkZWZpbmVkIGluIG1hY3JvCmludmFsaWRhdGVfaWNh
Y2hlX2J5X2xpbmUuCgo+IFRoYW5rcywKPiBNYXJrLgo+IAo+ID4gV2lsbCBpLWNhY2hlIHJlZmls
bCBmcm9tIEwyIGNhY2hlPwo+ID4KPiA+IHZvaWQgc3luY19pY2FjaGVfYWxpYXNlcyh2b2lkICpr
YWRkciwgdW5zaWduZWQgbG9uZyBsZW4pCj4gPiB7Cj4gPiAJdW5zaWduZWQgbG9uZyBhZGRyID0g
KHVuc2lnbmVkIGxvbmcpa2FkZHI7Cj4gPiAKPiA+IAlpZiAoaWNhY2hlX2lzX2FsaWFzaW5nKCkp
IHsKPiA+IAkJX19jbGVhbl9kY2FjaGVfYXJlYV9wb3Uoa2FkZHIsIGxlbik7Cj4gPiAJCV9fZmx1
c2hfaWNhY2hlX2FsbCgpOwo+ID4gCX0gZWxzZSB7Cj4gPiAJCS8qCj4gPiAJCSAqIERvbid0IGlz
c3VlIGtpY2tfYWxsX2NwdXNfc3luYygpIGFmdGVyIEktY2FjaGUgaW52YWxpZGF0aW9uCj4gPiAJ
CSAqIGZvciB1c2VyIG1hcHBpbmdzLgo+ID4gCQkgKi8KPiA+IAkJX19mbHVzaF9pY2FjaGVfcmFu
Z2UoYWRkciwgYWRkciArIGxlbik7Cj4gPiAJfQo+ID4gfQo+ID4gCj4gPiAtLSAKPiA+IENoZWVy
cywKPiA+IENoYW5nYmluIER1CgotLSAKQ2hlZXJzLApDaGFuZ2JpbiBEdQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
