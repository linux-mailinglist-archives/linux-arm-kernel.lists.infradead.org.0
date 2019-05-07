Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DCB15E04
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjJxoSPJSnXwbhEVN7FkcvGCioDTG1JYuqdXn//sBeA=; b=NAPbHS/Uq1xmiM
	VUPeI+rkSmX7HZOFNAiHp6lp3AffwVYV3DY7PqtdgPaL/fIk9CF/MjhrB+jO8u9hdydYaFNJG9gc4
	YMj4Zpfu5OkIO71fnhX0Cv+ExpVkLqlYoHUFgj1eNJChMxwN273ka56ZymcnmNAqnimWMbP/1doXc
	7BdMjljEX9tdsKwps2+6FQma20n/jyuopJucvEQscOFqaLxgFkLCcZ00n7JtzlCqldXJ1LwCxHZeJ
	5nyGqTLhXY5ZMSz7SrBA+XypsIjEfn1KLFTSneIef8fT42/7qDecden//wzDAM+p7tN0HWQnfQZbn
	7+3VLfzNdzn9G0BRbzWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuOX-0002af-NZ; Tue, 07 May 2019 07:20:09 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuOK-0002OP-9T; Tue, 07 May 2019 07:19:57 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x477IcRt038826;
 Tue, 7 May 2019 07:19:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=gh8GNwW8JqZ8l33L2MV69qCHnkHRZFobSuIcGq9lqV0=;
 b=venWrvI6fSC2eMSfNzb1Q926sV0muoBDKBR3ySVP26vVAExTIWIj/ycLzEF/EaE3pNqL
 Kfq4LuQOdvXOcoDZftZDcr0lWu6s/OXW8rcNEMRsKmFu10eq0A2RxcHPxQZRdurDnbia
 sPzFCWXBkxCEdOcC6XKjHzJ1D2SbnFHv/xZbTFrXUbYg5cOiXU58sj/Ktn1SoxWO7iWy
 TyBigWKovcvi3Y+0JxZWlgT42tTA6LSEL+W0cfC1OiqNHYlaHtIoc3HgPd5X5tcG8Tz0
 QgGlPbQzzMWdzyax7siw69SR2Upn40agESX8RjEOCJNMiJhXgPMHcaT7VDRTjO4RJjZ5 0A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2s94bfu2n9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2019 07:19:35 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x477JQw8151924;
 Tue, 7 May 2019 07:19:34 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2s9ayeqf76-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2019 07:19:34 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x477JP0j007791;
 Tue, 7 May 2019 07:19:25 GMT
Received: from kadam (/105.53.239.4) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 07 May 2019 00:19:24 -0700
Date: Tue, 7 May 2019 10:19:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Message-ID: <20190507071914.GJ2269@kadam>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557177887-30446-1-git-send-email-ynezz@true.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905070048
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905070048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_001956_466572_272F8FF6 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMTE6MjQ6NDNQTSArMDIwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBIaSwKPiAKPiB0aGlzIHBhdGNoIHNlcmllcyBpcyBhbiBhdHRlbXB0IHRvIGZpeCB0
aGUgbWVzcywgSSd2ZSBzb21laG93IG1hbmFnZWQgdG8KPiBpbnRyb2R1Y2UuCj4gCj4gRmlyc3Qg
cGF0Y2ggaW4gdGhpcyBzZXJpZXMgaXMgZGVmYWN0byB2NSBvZiB0aGUgcHJldmlvdXMgMDUvMTAg
cGF0Y2ggaW4gdGhlCj4gc2VyaWVzLCBidXQgc2luY2UgdGhlIHY0IG9mIHRoaXMgMDUvMTAgcGF0
Y2ggd2Fzbid0IHBpY2tlZCB1cCBieSB0aGUKPiBwYXRjaHdvcmsgZm9yIHNvbWUgdW5rbm93biBy
ZWFzb24sIHRoaXMgcGF0Y2ggd2Fzbid0IGFwcGxpZWQgd2l0aCB0aGUgb3RoZXIKPiA5IHBhdGNo
ZXMgaW4gdGhlIHNlcmllcywgc28gSSdtIHJlc2VuZGluZyBpdCBhcyBhIHNlcGFyYXRlIHBhdGNo
IG9mIHRoaXMKPiBmaXh1cCBzZXJpZXMgYWdhaW4uCgpJIGZlZWwgc29ydCBvZiByaWRpY3Vsb3Vz
IGFza2luZyB0aGlzIG92ZXIgYW5kIG92ZXIuLi4gIE1heWJlIHlvdXIgc3BhbQpmaWx0ZXIgaXMg
ZWF0aW5nIG15IGVtYWlscz8KClRoaXMgYnVnIHdhcyBpbnRyb2R1Y2VkIGluIGh0dHBzOi8vcGF0
Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA5NDkxNi8KIlt2NCwwMS8xMF0gb2ZfbmV0OiBhZGQg
TlZNRU0gc3VwcG9ydCB0byBvZl9nZXRfbWFjX2FkZHJlc3MiIGJ1dCBpdApsb29rcyBsaWtlIG5v
IG9uZSBhcHBsaWVkIGl0LgoKWW91J3JlIGFjdGluZyBhcyBpZiBpdCAqd2FzKiBhcHBsaWVkIGJ1
dCB5b3UgcmVmdXNlIHRvIGFuc3dlciBteQpxdWVzdGlvbiB3aG8gYXBwbGllZCBpdCBhbmQgd2hp
Y2ggdG8gd2hpY2ggdHJlZSBzbyBJIGNhbiBmaWd1cmUgb3V0IHdoYXQKd2VudCB3cm9uZy4KCkkg
b25seSBzZWUgY29tbWVudHMgZnJvbSBsYXN0IEZyaWRheSB0aGF0IGl0IHNob3VsZG4ndCBiZSBh
cHBsaWVkLi4uICBJCmFsc28gdG9sZCB5b3Ugb24gRnJpZGF5IGluIGEgZGlmZmVyZW50IHRocmVh
ZCB0aGF0IHRoYXQgcGF0Y2ggc2hvdWxkbid0CmJlIGFwcGxpZWQuICBCcmVha2luZyBnaXQgYmlz
ZWN0IGlzIGEgYnVnLCBhbmQgd2UgbmV2ZXIgZG8gdGhhdC4gIEknbQpqdXN0IHZlcnkgY29uZnVz
ZWQgcmlnaHQgbm93Li4uICBXaGF0IEknbSB0cnlpbmcgdG8gZG8gaXMgZmlndXJlIG91dCBpbgpt
eSBoZWFkIGhvdyB0aGlzIHByb2Nlc3MgZmFpbGVkIHNvIHdlIGNhbiBkbyBiZXR0ZXIgbmV4dCB0
aW1lLgoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
