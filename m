Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163FB1DFE7E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 13:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anRrQM0r4Ck5L058eO0gIpwl/O3PNLPNylTj9V7/sbY=; b=YZ0Rd0/E3tU6uf
	BhuGlTW2DdQaGklY97a3oIeS1nnLpvaOIibAe1XtYrhKRTY7osLVuTB9KQkGoFsXFUeSedcYyUoLy
	gZBn86Awe+rcJDhhISnd2PpmXek3SlJCJ2ReOeCfkvNS8qo9JdnPCduBgJOeGfCE5sCNm9vzZLYdy
	impVX2Ji8gmOeem+zM8oVTGsy6jXr88G400Z4CMYAnaOhT3pFohmSmfuD4RCU5ngbNPv6SofEvZIo
	ISwg/H5KCuJpAhECOBQLYPA33C3jWVO18hNxlcfnfmCtfEZJwzwQoAJndgxbp07VB1kwIWEzBGa2q
	u4983+jXY8xdoqfr7Lmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcobA-0006tC-Mp; Sun, 24 May 2020 11:15:20 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcob1-0006aC-WF; Sun, 24 May 2020 11:15:13 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M8hMt-1jhTI50ukD-004lWv; Sun, 24 May 2020 13:15:08 +0200
Received: by mail-qt1-f179.google.com with SMTP id i68so11943918qtb.5;
 Sun, 24 May 2020 04:15:06 -0700 (PDT)
X-Gm-Message-State: AOAM5337r+6za4+acDcyV6GkdfmfOlyby2f1MyX9mdYqNKRvFr+qJb/8
 rxA7ExBtttPcK/T/sqPs1Tjg8R2BxR8dMLC721Y=
X-Google-Smtp-Source: ABdhPJzLa7acitFD9xvGhwFgsyhGkTphi6Wcqu/pQU40QEW+DA8DKggWRsmYhNkmqGbzLOwBirNaXJMcJ7YBNL4WB6M=
X-Received: by 2002:ac8:474f:: with SMTP id k15mr15122856qtp.18.1590318905777; 
 Sun, 24 May 2020 04:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000861e3305a65e9d74@google.com>
 <768166145.263589.1590307748272.JavaMail.zimbra@nod.at>
In-Reply-To: <768166145.263589.1590307748272.JavaMail.zimbra@nod.at>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 24 May 2020 13:14:49 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1VwDCAbzVXomsqOON+xyKC6XNNzpjEh9rgXJ9Dgb4V-Q@mail.gmail.com>
Message-ID: <CAK8P3a1VwDCAbzVXomsqOON+xyKC6XNNzpjEh9rgXJ9Dgb4V-Q@mail.gmail.com>
Subject: Re: KASAN: use-after-free Read in uif_close
To: Richard Weinberger <richard@nod.at>
X-Provags-ID: V03:K1:pW1vfKGRlZrm4awWFpAEBl/OGCkyFXSZd78iQSqoRPSl5gqUqRO
 rwgCNgG2fkZjJ7R+4hyqXBmkOImPgGdLdeTx/AWIK/QrZMDuFqzmiCqyPsVMBr9jkcJQGEO
 G+30GizSkm3f2NnTpWft/lFBbOnniXLbrkfR+cCrOtg7DIM+xvrzuwHik91okmE1A3Qrrwz
 NH+bcw8g+HzAJMExBcXJQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DmYyPC00jBc=:eGTBACFuLzq4uLk4m4pLom
 GWmuNidw8uiflxisMbKQ3L+5lPYuQ7353E3r6wsdm4RyW2mBKfQYOc5ksutJ08WHU7pGQ8dpU
 8nLK4123v2VGL13IRJOKRgSOnSN/5TcY8Gb2CHiQ9c6IP4XIq1UQamN7IvoeppXDkXAkXt6dP
 pRUzmGw/BFPLgTpBpzPcNuVThBqHYdmd56BDx79spxcV/VKNhEhMX+W+2QFiPq33GC1Aj4Wzy
 0zsHjgw6mCgrb+NenMBOdc3ctKz0BlD8Lmc9g0/Vbc7fP5DQQZOesu7CUUdmh7W+Aax4qCREW
 3NI0Ubot0DaKJoXcc4uwv1MrH7Mv6Qr9eR10pWPS7e0VUfVTs4c/lMYo5VFhN+lwt1zh3dlh0
 aFeCPvW1H3vCvzLOHbky5VLu8/TvRQ0r1+Ny4L+m3SBAq2CkaR3xAL0jfpUBOWQAqEIKHltx2
 T19XA7jcaIy7xGUONV3a3gmyxYuaaLIQQm1OAV8h5BT0QkEgJZ7/5fjmY3LP078d1oTkRFHnU
 oADOVqf1gNc9aluYfbhnPX1MIfBBQ80jp2e9xwmZCHBeuxZ4B6C9acUuVwleWLmfSj4wZTBt8
 qht4k6GTspRiwF8H7TGkcAxMpwy4hGYK3rQO4dzhdTy5eoxcCIOdp6kB1DDoNZ2NKRMHIC59M
 tthnpM6KouFIfuKttatqLdwFiOmnXZKmhGz+v8zqHb+sHABhyplU5BCzwXuIJjaqOe5Mstx/N
 /zVPptoB31sVmbu3/YlghGq50EO6q6UZPL0bdZx+pB+S+2L5px3yuJaoGYrKT1TBUN6NsFZCe
 wQyhwxLKOMmTivkUBFnRFOZa7R8378WbmWnvOhde/+xyDAsTOs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_041512_330334_5ED1B5C5 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
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
Cc: syzbot <syzbot+0ce97ea45b008ba3b8bd@syzkaller.appspotmail.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, festevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <linux@rempel-privat.de>,
 linux-mtd <linux-mtd@lists.infradead.org>, linux-imx <linux-imx@nxp.com>,
 kernel <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 shawnguo <shawnguo@kernel.org>, daniel baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBNYXkgMjQsIDIwMjAgYXQgMTA6MDkgQU0gUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNo
YXJkQG5vZC5hdD4gd3JvdGU6Cj4KPiAtLS0tLSBVcnNwcsO8bmdsaWNoZSBNYWlsIC0tLS0tCj4g
PiBWb246ICJzeXpib3QiIDxzeXpib3QrMGNlOTdlYTQ1YjAwOGJhM2I4YmRAc3l6a2FsbGVyLmFw
cHNwb3RtYWlsLmNvbT4KPiA+IEFuOiAiQXJuZCBCZXJnbWFubiIgPGFybmRAYXJuZGIuZGU+LCAi
ZGFuaWVsIGJhbHV0YSIgPGRhbmllbC5iYWx1dGFAbnhwLmNvbT4sICJmZXN0ZXZhbSIgPGZlc3Rl
dmFtQGdtYWlsLmNvbT4sICJHcmVnCj4gPiBLcm9haC1IYXJ0bWFuIiA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+LCAia2VybmVsIiA8a2VybmVsQHBlbmd1dHJvbml4LmRlPiwgImxpbnV4LWFy
bS1rZXJuZWwiCj4gPiA8bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnPiwgImxp
bnV4LWlteCIgPGxpbnV4LWlteEBueHAuY29tPiwgImxpbnV4LWtlcm5lbCIgPGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmc+LAo+ID4gImxpbnV4LW10ZCIgPGxpbnV4LW10ZEBsaXN0cy5pbmZy
YWRlYWQub3JnPiwgbGludXhAcmVtcGVsLXByaXZhdC5kZSwgIk1pcXVlbCBSYXluYWwiIDxtaXF1
ZWwucmF5bmFsQGJvb3RsaW4uY29tPiwKPiA+ICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+LCAi
U2FzY2hhIEhhdWVyIiA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4sICJzaGF3bmd1byIgPHNoYXdu
Z3VvQGtlcm5lbC5vcmc+LAo+ID4gc3l6a2FsbGVyLWJ1Z3NAZ29vZ2xlZ3JvdXBzLmNvbSwgIlZp
Z25lc2ggUmFnaGF2ZW5kcmEiIDx2aWduZXNockB0aS5jb20+Cj4gPiBHZXNlbmRldDogU29ubnRh
ZywgMjQuIE1haSAyMDIwIDA4OjAzOjAzCj4gPiBCZXRyZWZmOiBSZTogS0FTQU46IHVzZS1hZnRl
ci1mcmVlIFJlYWQgaW4gdWlmX2Nsb3NlCj4KPiA+IHN5emJvdCBoYXMgYmlzZWN0ZWQgdGhpcyBi
dWcgdG86Cj4gPgo+ID4gY29tbWl0IDMyZWM3ODNhZTE5ZDQ4MDg0Yjg5M2NjNTQ3NDdmZWQzN2Iw
N2ViMGMKPiA+IEF1dGhvcjogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiA+IERhdGU6
ICAgV2VkIEFwciA4IDE5OjAyOjU3IDIwMjAgKzAwMDAKPiA+Cj4gPiAgICBmaXJtd2FyZTogaW14
OiBmaXggY29tcGlsZS10ZXN0aW5nCj4KPiBIbW0sIGZyb20gYSBxdWljayBjaGVjayBJIGRvbid0
IHNlZSBob3cgdGhpcyBpcyByZWxhdGVkLgo+IEFybmQ/CgpJIHN1cHBvc2UgdGhpcyB3YXMgYSBy
YW5kY29uZmlnIGJ1aWxkIGZvciBhIGNvbmZpZ3VyYXRpb24gdGhhdCBkaWQgbm90IGJ1aWxkCnVu
dGlsIEkgZml4ZWQgdGhlIGJ1aWxkIHN0YWdlLCBhbmQgdGhlbiBpdCBmYWlsZWQgYXQgcnVudGlt
ZSwgc28gdGhlIGJ1ZyB3b3VsZApoYXZlIGJlZW4gaW4gZWFybGllciByZWxlYXNlcyBhcyB3ZWxs
LCBpdCB3YXMganVzdCBub3Qgb2JzZXJ2ZWQuCgogICAgIEFybmQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
