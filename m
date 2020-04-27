Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2541BACDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 20:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3M2HocSuJFrs9jLVOhp5feOvS8jdeqsLstgA2gYiSw0=; b=JngeeRk093+RRAHkIryqpAu/q
	C7fqbbA9axnQLlB5FF0CENT428tqkBQu+iPWxNKs0FROxbNofSIIW4urX7wQbl4AqJzP9zYjBDB5U
	wSxHYbrBgmK938GgrmpcU4QREWvCLzkWAA8f69BTsVCGQQt3jqagVGoAUa7u86vna9/XrEy9oQNqh
	Z9beIsE5lPNbK0Vtc14dVKi/dDqQRreNG8kcZORCLvkvnq+bkLVOzjZWEx44Q63cWPrbJgpbRVRxN
	SbMlse2E0X+kWnE5xl7JvHZDqSJ0w3Hb/HlwicDhvu7njGe+vCoJMwN97zceeLUpJ9cxaWFVUzCYJ
	7dxdEcxcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8al-0005a5-37; Mon, 27 Apr 2020 18:34:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8aa-0005YV-Dh
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 18:34:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id BAEC52A0D29
Subject: Re: [PATCH v3 2/2] thermal: core: Stop polling DISABLED thermal
 devices
To: "Zhang, Rui" <rui.zhang@intel.com>,
 "'linux-pm@vger.kernel.org'" <linux-pm@vger.kernel.org>
References: <a3998ad2-19bc-0893-a10d-2bb5adf7d99f@samsung.com>
 <20200423165705.13585-1-andrzej.p@collabora.com>
 <20200423165705.13585-3-andrzej.p@collabora.com>
 <744357E9AAD1214791ACBA4B0B90926377CF60E3@SHSMSX108.ccr.corp.intel.com>
 <744357E9AAD1214791ACBA4B0B90926377CF9A10@SHSMSX108.ccr.corp.intel.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <da9f0547-226d-71cf-f508-f4669fb2f5c2@collabora.com>
Date: Mon, 27 Apr 2020 20:34:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <744357E9AAD1214791ACBA4B0B90926377CF9A10@SHSMSX108.ccr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_113444_723090_F3A85338 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: 'Heiko Stuebner' <heiko@sntech.de>, 'Peter Kaestle' <peter@piie.net>,
 "'platform-driver-x86@vger.kernel.org'"
 <platform-driver-x86@vger.kernel.org>,
 "'kernel@collabora.com'" <kernel@collabora.com>,
 'Fabio Estevam' <festevam@gmail.com>,
 'Amit Kucheria' <amit.kucheria@verdurent.com>,
 'Chunyan Zhang' <zhang.lyra@gmail.com>,
 'Daniel Lezcano' <daniel.lezcano@linaro.org>,
 "'linux-acpi@vger.kernel.org'" <linux-acpi@vger.kernel.org>,
 'NXP Linux Team' <linux-imx@nxp.com>, 'Orson Zhai' <orsonzhai@gmail.com>,
 'Len Brown' <lenb@kernel.org>,
 'Barlomiej Zolnierkiewicz' <b.zolnierkie@samsung.com>,
 'Sascha Hauer' <s.hauer@pengutronix.de>, 'Ido Schimmel' <idosch@mellanox.com>,
 'Jiri Pirko' <jiri@mellanox.com>, 'Darren Hart' <dvhart@infradead.org>,
 "'linux-arm-kernel@lists.infradead.org'"
 <linux-arm-kernel@lists.infradead.org>,
 'Support Opensource' <support.opensource@diasemi.com>,
 "'netdev@vger.kernel.org'" <netdev@vger.kernel.org>,
 "'Rafael J . Wysocki'" <rjw@rjwysocki.net>,
 'Pengutronix Kernel Team' <kernel@pengutronix.de>,
 'Baolin Wang' <baolin.wang7@gmail.com>, 'Shawn Guo' <shawnguo@kernel.org>,
 "'David S . Miller'" <davem@davemloft.net>,
 'Andy Shevchenko' <andy@infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpXIGRuaXUgMjcuMDQuMjAyMCBvwqAxNjoyMCwgWmhhbmcsIFJ1aSBwaXN6ZToKPiAKPiAK
Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogWmhhbmcsIFJ1aQo+PiBTZW50
OiBGcmlkYXksIEFwcmlsIDI0LCAyMDIwIDU6MDMgUE0KPj4gVG86IEFuZHJ6ZWogUGlldHJhc2ll
d2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+OyBsaW51eC0KPj4gcG1Admdlci5rZXJuZWwu
b3JnCj4+IENjOiBSYWZhZWwgSiAuIFd5c29ja2kgPHJqd0Byand5c29ja2kubmV0PjsgTGVuIEJy
b3duIDxsZW5iQGtlcm5lbC5vcmc+Owo+PiBKaXJpIFBpcmtvIDxqaXJpQG1lbGxhbm94LmNvbT47
IElkbyBTY2hpbW1lbCA8aWRvc2NoQG1lbGxhbm94LmNvbT47IERhdmlkCj4+IFMgLiBNaWxsZXIg
PGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBQZXRlciBLYWVzdGxlIDxwZXRlckBwaWllLm5ldD47IERh
cnJlbgo+PiBIYXJ0IDxkdmhhcnRAaW5mcmFkZWFkLm9yZz47IEFuZHkgU2hldmNoZW5rbyA8YW5k
eUBpbmZyYWRlYWQub3JnPjsKPj4gU3VwcG9ydCBPcGVuc291cmNlIDxzdXBwb3J0Lm9wZW5zb3Vy
Y2VAZGlhc2VtaS5jb20+OyBEYW5pZWwgTGV6Y2Fubwo+PiA8ZGFuaWVsLmxlemNhbm9AbGluYXJv
Lm9yZz47IEFtaXQgS3VjaGVyaWEKPj4gPGFtaXQua3VjaGVyaWFAdmVyZHVyZW50LmNvbT47IFNo
YXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz47Cj4+IFNhc2NoYSBIYXVlciA8cy5oYXVlckBw
ZW5ndXRyb25peC5kZT47IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtCj4+IDxrZXJuZWxAcGVuZ3V0
cm9uaXguZGU+OyBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+OyBOWFAKPj4gTGlu
dXggVGVhbSA8bGludXgtaW14QG54cC5jb20+OyBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNo
LmRlPjsKPj4gT3Jzb24gWmhhaSA8b3Jzb256aGFpQGdtYWlsLmNvbT47IEJhb2xpbiBXYW5nCj4+
IDxiYW9saW4ud2FuZzdAZ21haWwuY29tPjsgQ2h1bnlhbiBaaGFuZyA8emhhbmcubHlyYUBnbWFp
bC5jb20+OyBsaW51eC0KPj4gYWNwaUB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5l
bC5vcmc7IHBsYXRmb3JtLWRyaXZlci0KPj4geDg2QHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOwo+PiBrZXJuZWxAY29sbGFib3JhLmNvbTsgQmFy
bG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+Cj4+IFN1Ympl
Y3Q6IFJFOiBbUEFUQ0ggdjMgMi8yXSB0aGVybWFsOiBjb3JlOiBTdG9wIHBvbGxpbmcgRElTQUJM
RUQgdGhlcm1hbAo+PiBkZXZpY2VzCj4+Cj4+IEhpLCBBbmRyemVqLAo+Pgo+PiBUaGFua3MgZm9y
IHRoZSBwYXRjaGVzLiBNeSBMaW51eCBsYXB0b3Agd2FzIGJyb2tlbiBhbmQgd29uJ3QgZ2V0IGZp
eGVkIHRpbGwKPj4gbmV4dCB3ZWVrLCBzbyBJIG1heSBsb3N0IHNvbWUgb2YgdGhlIGRpc2N1c3Np
b25zIHByZXZpb3VzbHkuCj4+Cj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4gRnJv
bTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4KPj4+IFNl
bnQ6IEZyaWRheSwgQXByaWwgMjQsIDIwMjAgMTI6NTcgQU0KPj4+IFRvOiBsaW51eC1wbUB2Z2Vy
Lmtlcm5lbC5vcmcKPj4+IENjOiBaaGFuZywgUnVpIDxydWkuemhhbmdAaW50ZWwuY29tPjsgUmFm
YWVsIEogLiBXeXNvY2tpCj4+PiA8cmp3QHJqd3lzb2NraS5uZXQ+OyBMZW4gQnJvd24gPGxlbmJA
a2VybmVsLm9yZz47IEppcmkgUGlya28KPj4+IDxqaXJpQG1lbGxhbm94LmNvbT47IElkbyBTY2hp
bW1lbCA8aWRvc2NoQG1lbGxhbm94LmNvbT47IERhdmlkIFMgLgo+Pj4gTWlsbGVyIDxkYXZlbUBk
YXZlbWxvZnQubmV0PjsgUGV0ZXIgS2Flc3RsZSA8cGV0ZXJAcGlpZS5uZXQ+OyBEYXJyZW4KPj4+
IEhhcnQgPGR2aGFydEBpbmZyYWRlYWQub3JnPjsgQW5keSBTaGV2Y2hlbmtvIDxhbmR5QGluZnJh
ZGVhZC5vcmc+Owo+Pj4gU3VwcG9ydCBPcGVuc291cmNlIDxzdXBwb3J0Lm9wZW5zb3VyY2VAZGlh
c2VtaS5jb20+OyBEYW5pZWwgTGV6Y2Fubwo+Pj4gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+
OyBBbWl0IEt1Y2hlcmlhCj4+PiA8YW1pdC5rdWNoZXJpYUB2ZXJkdXJlbnQuY29tPjsgU2hhd24g
R3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPjsKPj4gU2FzY2hhCj4+PiBIYXVlciA8cy5oYXVlckBw
ZW5ndXRyb25peC5kZT47IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtCj4+PiA8a2VybmVsQHBlbmd1
dHJvbml4LmRlPjsgRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPjsgTlhQCj4+IExp
bnV4Cj4+PiBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT47IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+OyBPcnNvbgo+PiBaaGFpCj4+PiA8b3Jzb256aGFpQGdtYWlsLmNvbT47IEJhb2xp
biBXYW5nIDxiYW9saW4ud2FuZzdAZ21haWwuY29tPjsKPj4gQ2h1bnlhbgo+Pj4gWmhhbmcgPHpo
YW5nLmx5cmFAZ21haWwuY29tPjsgbGludXgtIGFjcGlAdmdlci5rZXJuZWwub3JnOwo+Pj4gbmV0
ZGV2QHZnZXIua2VybmVsLm9yZzsgcGxhdGZvcm0tZHJpdmVyLSB4ODZAdmdlci5rZXJuZWwub3Jn
Owo+Pj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOwo+Pj4ga2VybmVsQGNv
bGxhYm9yYS5jb207IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5j
b20+Owo+Pj4gQmFybG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5j
b20+Cj4+PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMi8yXSB0aGVybWFsOiBjb3JlOiBTdG9wIHBvbGxp
bmcgRElTQUJMRUQgdGhlcm1hbAo+Pj4gZGV2aWNlcwo+Pj4gSW1wb3J0YW5jZTogSGlnaAo+Pj4K
Pj4+IFBvbGxpbmcgRElTQUJMRUQgZGV2aWNlcyBpcyBub3QgZGVzaXJlZCwgYXMgYWxsIHN1Y2gg
ImRpc2FibGVkIgo+Pj4gZGV2aWNlcyBhcmUgbWVhbnQgdG8gYmUgaGFuZGxlZCBieSB1c2Vyc3Bh
Y2UuIFRoaXMgcGF0Y2ggaW50cm9kdWNlcwo+Pj4gYW5kIHVzZXMKPj4+IHNob3VsZF9zdG9wX3Bv
bGxpbmcoKSB0byBkZWNpZGUgd2hldGhlciB0aGUgZGV2aWNlIHNob3VsZCBiZSBwb2xsZWQgb3IK
Pj4gbm90Lgo+Pj4KPj4gVGhhbmtzIGZvciB0aGUgZml4LCBhbmQgSU1PLCB0aGlzIHJldmVhbCBz
b21lIG1vcmUgcHJvYmxlbXMuCj4+IFNheSwgd2UgbmVlZCB0byBkZWZpbmUgIkRJU0FCTEVEIiB0
aGVybWFsIHpvbmUuCj4+IENhbiB3ZSByZWFkIHRoZSB0ZW1wZXJhdHVyZT8gQ2FuIHdlIHRydXN0
IHRoZSB0cmlwIHBvaW50IHZhbHVlPwo+Pgo+PiBJTU8sIGEgZGlzYWJsZWQgdGhlcm1hbCB6b25l
IGRvZXMgbm90IG1lYW4gaXQgaXMgaGFuZGxlZCBieSB1c2Vyc3BhY2UsCj4+IGJlY2F1c2UgdGhh
dCBpcyB3aGF0IHRoZSB1c2Vyc3BhY2UgZ292ZXJub3IgZGVzaWduZWQgZm9yLgo+PiBJbnN0ZWFk
LCBpZiBhIHRoZXJtYWwgem9uZSBpcyBkaXNhYmxlZCwgaW4gdGhlcm1hbF96b25lX2RldmljZV91
cGRhdGUoKSwgd2UKPj4gc2hvdWxkIGJhc2ljYWxseSBza2lwIGFsbCB0aGUgb3RoZXIgb3BlcmF0
aW9ucyBhcyB3ZWxsLgo+Pgo+IEkgb3Zlcmxvb2tlZCB0aGUgbGFzdCBsaW5lIG9mIHRoZSBwYXRj
aC4gU28gdGhlcm1hbF96b25lX2RldmljZV91cGRhdGUoKSByZXR1cm5zCj4gaW1tZWRpYXRlbHkg
aWYgdGhlIHRoZXJtYWwgem9uZSBpcyBkaXNhYmxlZCwgcmlnaHQ/Cj4gCj4gQnV0IGhvdyBjYW4g
d2Ugc3RvcCBwb2xsaW5nIGluIHRoaXMgY2FzZT8KCkl0IGRvZXMgc3RvcC4gSG93ZXZlciwgSSBp
bmRlZWQgb2JzZXJ2ZSBhbiBleHRyYSBjYWxsIHRvCnRoZXJtYWxfem9uZV9kZXZpY2VfdXBkYXRl
KCkgYmVmb3JlIGl0IGZ1bGx5IHN0b3BzLgpJIHRoaW5rIHdoYXQgaGFwcGVucyBpcyB0aGlzOgoK
LSBzdG9yaW5nICJkaXNhYmxlZCIgaW4gbW9kZSBlbmRzIHVwIGluIHRoZXJtYWxfem9uZV9kZXZp
Y2Vfc2V0X21vZGUoKSwKd2hpY2ggY2FsbHMgZHJpdmVyJ3MgLT5zZXRfbW9kZSgpIGFuZCB0aGVu
IGNhbGxzIHRoZXJtYWxfem9uZV9kZXZpY2VfdXBkYXRlKCksCndoaWNoIHJldHVybnMgaW1tZWRp
YXRlbHkgYW5kIGRvZXMgbm90IHRvdWNoIHRoZSB0ei0+cG9sbF9xdWV1ZSBkZWxheWVkCndvcmsK
Ci0gdGhlcm1hbF96b25lX2RldmljZV91cGRhdGUoKSBpcyBjYWxsZWQgZnJvbSB0aGUgZGVsYXll
ZCB3b3JrIHdoZW4gaXRzCnRpbWUgY29tZXMgYW5kIHRoaXMgdGltZSBpdCBhbHNvIHJldHVybnMg
aW1tZWRpYXRlbHksIG5vdCBtb2RpZnlpbmcgdGhlCnNhaWQgZGVsYXllZCB3b3JrLCBzbyBwb2xs
aW5nIGVmZmVjdGl2ZWx5IHN0b3BzIG5vdy4KCj4gVGhlcmUgaXMgbm8gY2hhbmNlIHRvIGNhbGwg
aW50byBtb25pdG9yX3RoZXJtYWxfem9uZSgpIGluIHRoZXJtYWxfem9uZV9kZXZpY2VfdXBkYXRl
KCksCj4gb3IgZG8gSSBtaXNzIHNvbWV0aGluZz8KCldpdGhvdXQgdGhlIGxhc3QgImlmIiBzdGF0
ZW1lbnQgaW4gdGhpcyBwYXRjaCBwb2xsaW5nIHN0b3BzIHdpdGggdGhlCmZpcnN0IGNhbGwgdG8g
dGhlcm1hbF96b25lX2RldmljZV91cGRhdGUoKSBiZWNhdXNlIGl0IGluZGVlZCBkaXNhYmxlcwp0
aGUgZGVsYXllZCB3b3JrLgoKU28geW91IGFyZSBwcm9iYWJseSByaWdodCAtIHRoYXQgbGFzdCAi
aWYiIHNob3VsZCBub3QgYmUgaW50cm9kdWNlZC4KCj4gCj4+IEknbGwgdHJ5IHlvdXIgcGF0Y2hl
cyBhbmQgcHJvYmFibHkgbWFrZSBhbiBpbmNyZW1lbnRhbCBwYXRjaC4KPiAKPiBJIGhhdmUgZmlu
aXNoZWQgYSBzbWFsbCBwYXRjaCBzZXQgdG8gaW1wcm92ZSB0aGlzIGJhc2VkIG9uIG15IHVuZGVy
c3RhbmRpbmcsIGFuZCB3aWxsIHBvc3QgaXQKPiB0b21vcnJvdyBhZnRlciB0ZXN0aW5nLgo+IAoK
SXMgeW91ciBzbWFsbCBwYXRjaHNldCBiYXNlZCBvbiB0b3Agb2YgdGhpcyBzZXJpZXMgb3IgaXMg
aXQgYSBjb21wbGV0ZWx5CnJld3JpdHRlbiB2ZXJzaW9uPwoKQW5kcnplagoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
