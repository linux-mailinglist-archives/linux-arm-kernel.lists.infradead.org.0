Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568B817CD3F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 10:26:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2n3S1Y66cc9jc2FzTlsgyUx2GgddU7ggr49vAkdIUFE=; b=jW7qqJ3FgfcE34E1CNeEXn3WG
	JVLFhjNbTTHjlEbbSxcr73eT2SMAgwU+KB5CDdrTUUkFeD1slGXEerAN4fxwCLjMhcRpnNMKBtbkH
	W0POLJyNYX7nRIrtoFLeNlO7UkdILyNqVj3PsuYfvt38spGnD1iz38vgnb9Iq0Pa7XvZbaPhpwMON
	0Dzpph0whQKuRQKUoCI0Jw16xGjtSBetroek5mK+05aBRq0E7qAB/9wqr0P+5htQbkB+aT45D170j
	fW7ouQInf2dRrZAXoluC/CkBrLiqlkjJ2IwFWQ/epCs2jmfEN5HoYErdt17nZ119cSALaIPU5RCIT
	gGj5X9tjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAViq-0001O1-3K; Sat, 07 Mar 2020 09:26:16 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAViY-0001Iy-7O
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 09:26:00 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 11FCA23EB4;
 Sat,  7 Mar 2020 10:25:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583573156;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k5ZQ+jGPB/XqVL4rRP9EmsAWoBDvpiXvAb7VKbopIoM=;
 b=ZOqzzySJsyMFJdD2BnnD0p1c2FIDVyA1rZSwjwFlgyKyIuYiUXq8hJPZ3bhvzq4vFWspVW
 xdNVvVSKbL/plsWkSUo9TlTb+xhQKzVP8uf9VP/sbxpkJxs3RuFK+lseR6BEufLKutSHH8
 pjfkdV4Qoxlopt0pYskNih+n9Q8oj2w=
MIME-Version: 1.0
Date: Sat, 07 Mar 2020 10:25:55 +0100
From: Michael Walle <michael@walle.cc>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [EXT] [PATCH 2/2] arm64: dts: ls1028a: add "fsl,vf610-edma"
 compatible
In-Reply-To: <VI1PR04MB44312A940BC5BFC7F13A5706EDE00@VI1PR04MB4431.eurprd04.prod.outlook.com>
References: <20200306205403.29881-1-michael@walle.cc>
 <20200306205403.29881-2-michael@walle.cc>
 <VI1PR04MB44312A940BC5BFC7F13A5706EDE00@VI1PR04MB4431.eurprd04.prod.outlook.com>
Message-ID: <e0be23f7d1307621151594dd66d2b8fd@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 11FCA23EB4
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_SEVEN(0.00)[10];
 NEURAL_HAM(-0.00)[-0.462]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_012558_419942_DC7F1138 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Li <leoyang.li@nxp.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGVuZywKCkFtIDIwMjAtMDMtMDcgMDM6MDksIHNjaHJpZWIgUGVuZyBNYToKPj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogTWljaGFlbCBXYWxsZSA8bWljaGFlbEB3YWxs
ZS5jYz4KPj4gU2VudDogMjAyMOW5tDPmnIg35pelIDQ6NTQKPj4gVG86IGRtYWVuZ2luZUB2Z2Vy
Lmtlcm5lbC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOwo+PiBsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4g
Q2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+OyBSb2IgSGVycmluZyA8cm9iaCtkdEBr
ZXJuZWwub3JnPjsgCj4+IE1hcmsKPj4gUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+OyBT
aGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+OyBMZW8gCj4+IExpCj4+IDxsZW95YW5nLmxp
QG54cC5jb20+OyBQZW5nIE1hIDxwZW5nLm1hQG54cC5jb20+OyBNaWNoYWVsIFdhbGxlCj4+IDxt
aWNoYWVsQHdhbGxlLmNjPgo+PiBTdWJqZWN0OiBbRVhUXSBbUEFUQ0ggMi8yXSBhcm02NDogZHRz
OiBsczEwMjhhOiBhZGQgImZzbCx2ZjYxMC1lZG1hIgo+PiBjb21wYXRpYmxlCj4+IAo+PiBDYXV0
aW9uOiBFWFQgRW1haWwKPj4gCj4+IFRoZSBib290bG9hZGVyIGRvZXMgdGhlIElPTU1VIGZpeHVw
IGFuZCBkeW5hbWljYWxseSBhZGRzIHRoZSAiaW9tbXVzIgo+PiBwcm9wZXJ0eSB0byBkZXZpY2Vz
IGFjY29yZGluZyB0byBpdHMgY29tcGF0aWJsZSBzdHJpbmcuIEluIGNhc2Ugb2YgdGhlIAo+PiBl
RE1BCj4+IGNvbnRyb2xsZXIgdGhpcyBwcm9wZXJ0eSBpcyBtaXNzaW5nLiBBZGQgaXQuIEFmdGVy
IHRoYXQgdGhlIElPTU1VIHdpbGwgCj4+IHdvcmsgd2l0aAo+PiB0aGUgZURNQSBjb3JlLgo+PiAK
Pj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBXYWxsZSA8bWljaGFlbEB3YWxsZS5jYz4KPj4gLS0t
Cj4+IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kgfCAyICst
Cj4+IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+PiAKPj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0
c2kKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpCj4+
IGluZGV4IGIxNTJmYTkwY2Y1Yy4uYWE0NjdiZmYyMjA5IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpCj4+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kKPj4gQEAgLTQ0Nyw3ICs0NDcs
NyBAQAo+PiAKPj4gICAgICAgICAgICAgICAgZWRtYTA6IGRtYS1jb250cm9sbGVyQDIyYzAwMDAg
ewo+PiAgICAgICAgICAgICAgICAgICAgICAgICNkbWEtY2VsbHMgPSA8Mj47Cj4+IC0gICAgICAg
ICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGxzMTAyOGEtZWRtYSI7Cj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGxzMTAyOGEtZWRtYSIsCj4+ICsg
ImZzbCx2ZjYxMC1lZG1hIjsKPiBIaSBNaWNoYWVsLAo+IAo+IFlvdSBzaG91bGQgY2hhbmdlIGl0
IG9uIGJvb3Rsb2FkZXIgaW5zdGVhZCBvZiBrZXJuZWwsIFNvbWUgUmVnIG9mCj4gTFMxMDI4YSBp
cyBkaWZmZXJlbnQKPiBmcm9tIG90aGVycywgU28gd2UgdXNlZCBjb21wYXRpYmxlICJmc2wsbHMx
MDI4YS1lZG0iIHRvIGRpc3Rpbmd1aXNoICIKPiBmc2wsdmY2MTAtZWRtYSIuCgpZZXMgdGhpcyBt
aWdodCBiZSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8uIFNvIHNpbmNlIGl0IGlzIE5YUHMgYm9vdGxv
YWRlcgpmZWVsIGZyZWUgdG8gZml4IHRoYXQgOykgTG9va2luZyBhdCB0aGUgdS1ib290IGNvZGUg
cmlnaHQgbm93LCBJIGRvbid0CmV2ZW4ga25vdyBpdCB0aGF0IGlzIHRoZSByaWdodCBmaXggYXQg
YWxsLiBUaGUgZml4dXAgY29kZSBpbiB1LWJvb3QgaXMKU29DIGluZGVwZW5kZW50IChpdHMgaW4g
ZnNsX2ljaWQuaCBhbmQgaXMgZW5hYmxlZCB3aXRoIENPTkZJR19MU0NIMywgaWUKeW91ciBjaGFz
c2lzIHZlcnNpb24pLiBGb3IgZXhhbXBsZSwgdGhlIHNkaGMgZml4dXAgd2lsbCBzY2FuIHRoZSBu
b2Rlcwpmb3IgImNvbXBhdGlibGUgPSBmc2wsZXNkaGMiLCB3aGljaCBpcyBhbHNvIHRoZSBzZWNv
bmRhcnkgY29tcGF0aWJsZQpmb3IgdGhlICJsczEwMjhhLWVzZGhjIiBjb21wYXRpYmxlLgoKQW5k
IGhlcmUgaXMgYW5vdGhlciByZWFzb24gdG8gaGF2ZSBpdCB0aGlzIHdheTogd2UgbmVlZCBiYWNr
d2FyZHMKY29tcGF0aWJpbGl0eSwgdGhlIGFyZSBhbHJlYWR5IGJvYXJkcyBvdXQgdGhlcmUgd2hv
c2UgYm9vdGxvYWRlciB3aWxsCmZpeC11cCB0aGUgIm9sZCIgbm9kZS4gVGh1cyBJIGRvbid0IHNl
ZSBhbnkgb3RoZXIgcG9zc2liaWx0eS4KCi1taWNoYWVsCgo+IAo+IFRoYW5rcywKPiBQZW5nCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweDIyYzAwMDAgMHgwIDB4MTAwMDA+
LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDAgMHgyMmQwMDAwIDB4MCAweDEw
MDAwPiwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MHgwIDB4MjJlMDAwMCAweDAg
MHgxMDAwMD47Cj4+IC0tCj4+IDIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
