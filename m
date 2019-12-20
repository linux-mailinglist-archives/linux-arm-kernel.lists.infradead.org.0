Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D3E127A83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=V/geN1yrp1Yf+RUWFcEMVQSg0ptd6z+7SaigqS2usP8=; b=qE7mMjhNVYcddP
	AGkqnrRfuDYpL6PU6ax2dpqSqogE1R5iukxWc3JCh7H8sBIYxOU2nURpBfd1kDwe+CdG6t720zM5O
	ZJ11DKastwxA/i9OmqtcDJectoHowjWl0APcvVKiGRkl7EVwlBEv/jqiVTdw53GQw2NVDhvcOaF/t
	K2q/dVVltfnKidSiJiNwEHTiyQfDE+UHsJtDwz5ySIYJ+4+w1lPL8yP/mprNbFNyMODyjg8C8JfmC
	OsAk9eG5FfzXOBxfbzHy8kZu3f6LzgEa9I/7guTxdqynOT79sVpVI9NXbl0Sh5Fr57UJiIxiSHD7O
	pOqUWmDRj91YZWMd1dEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGyl-0005Lv-5f; Fri, 20 Dec 2019 12:01:59 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGyV-0005KH-P6
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:01:45 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191220120141euoutp02d28267473ab69fea7ec75a91782c6fc6~iEqDbdULO0140301403euoutp02_
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 12:01:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191220120141euoutp02d28267473ab69fea7ec75a91782c6fc6~iEqDbdULO0140301403euoutp02_
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576843301;
 bh=o8kqTbI3GWwahjeMr7ptW3eNW7y3qIfdXJX6mSqJ8GU=;
 h=From:To:Cc:Subject:Date:References:From;
 b=fRG9JCy6XCwtp4ZdCi7PJzn3R5kwHooe2fVk+33c3GV2959QFdWTCqaNwlbgWfID7
 x7aVTbQ7JBD6/EAlSUIW/oDTWydvAN84A76DH2owSsHzXq6WucpD3pTV6Ldm9YRMrt
 /K4K6HSAMKBeJ35F+6m9rHHNYXmHBfhWHPQ219uo=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191220120141eucas1p1346b57898e6b86bf808788dc151be72e~iEqDHDdLL2294822948eucas1p15;
 Fri, 20 Dec 2019 12:01:41 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 5E.84.60679.528BCFD5; Fri, 20
 Dec 2019 12:01:41 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191220120140eucas1p14ad33c20882f8f48e02337ea16754d91~iEqC0-4Uz1895118951eucas1p1f;
 Fri, 20 Dec 2019 12:01:40 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191220120140eusmtrp2e53173ce4cb4fe4f518a9ac1d5e90469~iEqC0RcnC2149221492eusmtrp2q;
 Fri, 20 Dec 2019 12:01:40 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-18-5dfcb8251d32
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 7D.58.07950.428BCFD5; Fri, 20
 Dec 2019 12:01:40 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191220120140eusmtip2d5da1c65c2cb57bed1af99b2eb661293~iEqCD-7rN2783527835eusmtip2t;
 Fri, 20 Dec 2019 12:01:40 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v3 0/7] PM / devfreq: Simple QoS for exynos-bus using
 interconnect
Date: Fri, 20 Dec 2019 12:56:46 +0100
Message-Id: <20191220115653.6487-1-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTH++3u3l1XG3dT6LReNhJKqGUW/KJlT+pC9KKIiEZNu6jkVuxm
 pQVNI7GVJSvxkahUpJiyuXzMsSRkZA/UzEfho4WPSqOsfESmmbdrj/++53vO5/zOOfxoQt1C
 auhY80nOYjbGaSm5tPLR98ZlIe5xw4qer0rsz7uIcFmWg8Qvh9+RON/XQOKWkUEKZz5wUdju
 T5fixkanDBd1fSGxq6eNxM2eXAoPpfkQzmqskeBSX5cMdyQVUTjrej+1gWFdxZcotrPNS7H+
 y3US9v6d82zZJ7eEvVpejNgh14LdsoNy/VEuLvYUZ9FFHJHHZLb60YnWhWeeVDVRVuTV2BBN
 A7MK7Jl7bUhOq5kiBKMTo0gMhhHYurtkNhQwFQwhGOnfKWgBqM9Io8SiQgQp7fXkX6Jiwi8R
 qihmI9gz3siERBDjQ3C9YFAqBASTK4HUS4VSoSqQOQAjpQ2/CSkTArc9DkLQCgZD37U3EvG9
 hXDP+XDaV8GT7N7fLDHlX6i4SQhNgWmXwQuHG4nAFuj61kuJOhAG6splop4Hk9X500156Kv2
 kyJsReC66yPExFrobBijhNMQzFJweHSivREmur0y8WJKePVRJc6gBHtlJiHaCkhNUYtSC55s
 pQgCJN9rm+7NwttnkxLxogboaXIQ6Sg457/Fcv5bLOffCAWIKEazuXjeFM3xK83c6eW80cTH
 m6OXRx03udDUX3v2s27YjTzjkbWIoZF2luJ91A+DmjSe4hNMtQhoQhuk6Ej9blArjhoTEjnL
 8cOW+DiOr0Vzaal2tiL8Vr9BzUQbT3LHOO4EZ/mTldABGiuqeD4+4+zoxZr1j8dG9gWXbK5/
 XaA5xxauduq/lfCqqjrLoq1Rm3evzGtODI9xNkekdG5KomynN7lqmcjPyvnjQVd026t3ZHeH
 vQ70WZ9GDSzRx9+YGVl5O91btV8+FjrnzoKBdWkBW8N20TElodt0KoN6W0pG1p416/XJi999
 KFUd0kr5GGNYKGHhjb8ABpOM6GcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIIsWRmVeSWpSXmKPExsVy+t/xe7oqO/7EGnR+sbC4P6+V0WLjjPWs
 Fte/PGe1mH/kHKvFla/v2Sym793EZjHp/gQWi/PnN7BbrLj7kdVi0+NrrBaXd81hs/jce4TR
 Ysb5fUwWa4/cZbe43biCzWLG5JdsDgIem1Z1snncubaHzeN+93Emj81L6j02vtvB5NG3ZRWj
 x+dNcgHsUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFWRqZK+nY2Kak5mWWpRfp2
 CXoZ06/eZyy4Kl9xcvtFtgbGPVJdjJwcEgImEmen9rJ1MXJxCAksZZT4e/U6K0RCQuLj+htQ
 trDEn2tdUEWfGCXe/H/IBpJgE3CUmDT1ATtIQkTgFKPE1uXnwBLMAiuYJPrnCHcxcnAIC4RJ
 TGu0AwmzCKhKLN61nhnE5hWwkHja/4AJYoG8xOoNB6DighInZz5hAWllFlCXWD9PCGKivETz
 1tnMExj5ZyGpmoVQNQtJ1QJG5lWMIqmlxbnpucVGesWJucWleel6yfm5mxiB0bft2M8tOxi7
 3gUfYhTgYFTi4XVI+x0rxJpYVlyZe4hRgoNZSYT3dsfPWCHelMTKqtSi/Pii0pzU4kOMpkAv
 TGSWEk3OByaGvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjBr2
 Dx57/DiTwdi84qhswTQp9p3WRiujzs2c/+KI4zWmvcc1OhiTQ2v0wj+knFu91eJd/sTTP1Zt
 7Pm+9EJZo5lGfvjPwy9+iB2rfv+/pufUhxunrvouOjPTze+tQkHsvXlvnHwD9t7azCASW594
 /MOvhKlBNUrfreqDP7zZJLbTaiZ/kHXW791KLMUZiYZazEXFiQAR5L591AIAAA==
X-CMS-MailID: 20191220120140eucas1p14ad33c20882f8f48e02337ea16754d91
X-Msg-Generator: CA
X-RootMTR: 20191220120140eucas1p14ad33c20882f8f48e02337ea16754d91
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220120140eucas1p14ad33c20882f8f48e02337ea16754d91
References: <CGME20191220120140eucas1p14ad33c20882f8f48e02337ea16754d91@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_040144_014788_CB1C6D68 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBwYXRjaHNldCBhZGRzIGludGVyY29ubmVjdFsxXVsyXSBmcmFtZXdvcmsg
c3VwcG9ydCB0byB0aGUKZXh5bm9zLWJ1cyBkZXZmcmVxIGRyaXZlci4gRXh0ZW5kaW5nIHRoZSBk
ZXZmcmVxIGRyaXZlciB3aXRoCmludGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5IHN0YXJ0ZWQgYXMg
YSByZXNwb25zZSB0byB0aGUgaXNzdWUgcmVmZXJlbmNlZAppbiBbM10uIFRoZSBwYXRjaGVzIGNh
biBiZSBzdWJkaXZpZGVkIGludG8gdGhyZWUgZ3JvdXBzOgoKKGEpIFR3ZWFraW5nIHRoZSBpbnRl
cmNvbm5lY3QgZnJhbWV3b3JrIHRvIHN1cHBvcnQgdGhlIGV4eW5vcy1idXMgdXNlCmNhc2UgKHBh
dGNoZXMgMDEtLTAzLzA3KS4gRXhwb3J0aW5nIG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigpIGFs
bG93cyB0bwphdm9pZCBoYXJkY29kaW5nIGV2ZXJ5IHNpbmdsZSBncmFwaCBlZGdlIGluIHRoZSBE
VCBvciBkcml2ZXIgc291cmNlLCBhbmQKcmVsYXhpbmcgdGhlIHJlcXVpcmVtZW50IG9uICNpbnRl
cmNvbm5lY3QtY2VsbHMgcmVtb3ZlcyB0aGUgbmVlZCB0bwpwcm92aWRlIGR1bW15IG5vZGUgSURz
IGluIHRoZSBEVC4gQSBuZXcgZmllbGQgaW4gc3RydWN0IGljY19wcm92aWRlciBpcwp1c2VkIHRv
IGV4cGxpY2l0bHkgYWxsb3cgY29uZmlndXJpbmcgbm9kZSBwYWlycyBmcm9tIHR3byBkaWZmZXJl
bnQKcHJvdmlkZXJzLgoKKGIpIEltcGxlbWVudGluZyBpbnRlcmNvbm5lY3QgcHJvdmlkZXJzIGlu
IHRoZSBleHlub3MtYnVzIGRldmZyZXEgZHJpdmVyCmFuZCBhZGRpbmcgcmVxdWlyZWQgRFQgcHJv
cGVydGllcyBmb3Igb25lIHNlbGVjdGVkIHBsYXRmb3JtLCBuYW1lbHkKRXh5bm9zNDQxMiAocGF0
Y2hlcyAwNC0tMDUvMDcpLiBEdWUgdG8gdGhlIGZhY3QgdGhhdCB0aGlzIGFpbXMgdG8gYmUgYQpn
ZW5lcmljIGRyaXZlciBmb3IgdmFyaW91cyBFeHlub3MgU29Dcywgbm9kZSBJRHMgYXJlIGdlbmVy
YXRlZApkeW5hbWljYWxseSAocmF0aGVyIHRoYW4gaGFyZGNvZGVkKS4KCihjKSBJbXBsZW1lbnRp
bmcgYSBzYW1wbGUgaW50ZXJjb25uZWN0IGNvbnN1bWVyIGZvciBleHlub3MtbWl4ZXIKdGFyZ2V0
ZWQgYXQgc29sdmluZyB0aGUgaXNzdWUgcmVmZXJlbmNlZCBpbiBbM10sIGFnYWluIHdpdGggRFQK
cHJvcGVydGllcyBvbmx5IGZvciBFeHlub3M0NDEyIChwYXRjaGVzIDA2LS0wNy8wNykuCgpJbnRl
Z3JhdGlvbiBvZiBkZXZmcmVxIGFuZCBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrcyBpcyBhY2hpZXZl
ZCBieSB1c2luZwp0aGUgZGV2X3BtX3Fvc18qKCkgQVBJLiBXaGVuIENPTkZJR19JTlRFUkNPTk5F
Q1QgaXMgJ24nIChzdWNoIGFzIGluCmV4eW5vc19kZWZjb25maWcpIGFsbCBpbnRlcmNvbm5lY3Qg
QVBJIGZ1bmN0aW9ucyBhcmUgbm8tb3BzLgoKVGhpcyBzZXJpZXMgZGVwZW5kcyBvbiB0aGVzZSB0
aHJlZSBwYXRjaGVzIChtZXJnZWQgaW50byBkZXZmcmVxLW5leHRbNl0pOgoqIGh0dHBzOi8vcGF0
Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEyNzkwODcvCiogaHR0cHM6Ly9wYXRjaHdvcmsua2Vy
bmVsLm9yZy9wYXRjaC8xMTI3OTA5My8KKiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Bh
dGNoLzExMjkzNzY1LwphbmQgb24gdGhpcyBzZXJpZXM6CiogaHR0cHM6Ly9wYXRjaHdvcmsua2Vy
bmVsLm9yZy9jb3Zlci8xMTMwNDU0NS8KKHdoaWNoIGRvZXMgbm90IGFwcGx5IGNsZWFubHkgb24g
bmV4dC0yMDE5MTIyMCwgYWRkaW5nCi0tZXhjbHVkZT1hcmNoL2FybS9ib290L2R0cy9leHlub3M1
NDIyLW9kcm9pZC1jb3JlLmR0c2kgdG8gJ2dpdCBhbScgaXMgYQpxdWljayB3b3JrYXJvdW5kKQoK
LS0tCkNoYW5nZXMgc2luY2UgdjIgWzVdOgoqIFVzZSBpY2Nfc3RkX2FnZ3JlZ2F0ZSgpLgoqIElt
cGxlbWVudCBhIGRpZmZlcmVudCBtb2RpZmljYXRpb24gb2YgYXBwbHlfY29uc3RyYWludHMoKSBp
bgogIGRyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYyAocGF0Y2ggMDMpLgoqIFVzZSAnZXh5bm9z
LGludGVyY29ubmVjdC1wYXJlbnQtbm9kZScgaW4gdGhlIERUIGluc3RlYWQgb2YKICAnZGV2ZnJl
cScvJ3BhcmVudCcsIGRlcGVuZGluZyBvbiB0aGUgYnVzLgoqIFJlYmFzZSBvbiBEVCBwYXRjaGVz
IHRoYXQgZGVwcmVjYXRlIHRoZSAnZGV2ZnJlcScgRFQgcHJvcGVydHkuCiogSW1wcm92ZSBlcnJv
ciBoYW5kbGluZywgaW5jbHVkaW5nIGZyZWVpbmcgZ2VuZXJhdGVkIElEcyBvbiBmYWlsdXJlLgoq
IFJlbW92ZSBleHlub3NfYnVzX2ljY19jb25uZWN0KCkgYW5kIGFkZCBleHlub3NfYnVzX2ljY19n
ZXRfcGFyZW50KCkuCgotLS0KQ2hhbmdlcyBzaW5jZSB2MSBbNF06CiogUmViYXNlIG9uIGNvdXBs
ZWQgcmVndWxhdG9ycyBwYXRjaGVzLgoqIFVzZSBkZXZfcG1fcW9zXyooKSBBUEkgaW5zdGVhZCBv
ZiBvdmVycmlkaW5nIGZyZXF1ZW5jeSBpbgogIGV4eW5vc19idXNfdGFyZ2V0KCkuCiogVXNlIElE
UiBmb3Igbm9kZSBJRCBhbGxvY2F0aW9uLgoqIFJldmVyc2Ugb3JkZXIgb2YgbXVsdGlwbGljYXRp
b24gYW5kIGRpdmlzaW9uIGluCiAgbWl4ZXJfc2V0X21lbW9yeV9iYW5kd2lkdGgoKSAocGF0Y2gg
MDcpIHRvIGF2b2lkIGludGVnZXIgb3ZlcmZsb3cuCgotLS0KQXJ0dXIgxZp3aWdvxYQKU2Ftc3Vu
ZyBSJkQgSW5zdGl0dXRlIFBvbGFuZApTYW1zdW5nIEVsZWN0cm9uaWNzCgotLS0KUmVmZXJlbmNl
czoKWzFdIERvY3VtZW50YXRpb24vaW50ZXJjb25uZWN0L2ludGVyY29ubmVjdC5yc3QKWzJdIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcmNvbm5lY3QvaW50ZXJjb25uZWN0
LnR4dApbM10gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDg2MTc1Ny8gKG9y
aWdpbmFsIGlzc3VlKQpbNF0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA1
NDQxNy8gKHYxIG9mIHRoaXMgUkZDKQpbNV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9j
b3Zlci8xMTE1MjU5NS8gKHYyIG9mIHRoaXMgUkZDKQpbNl0gaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvY2hhbndvby9saW51eC5naXQvbG9nLz9oPWRldmZy
ZXEtbmV4dAoKQXJ0dXIgxZp3aWdvxYQgKDYpOgogIGludGVyY29ubmVjdDogRXhwb3J0IG9mX2lj
Y19nZXRfZnJvbV9wcm92aWRlcigpCiAgaW50ZXJjb25uZWN0OiBSZWxheCByZXF1aXJlbWVudCBp
biBvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoKQogIGludGVyY29ubmVjdDogQWxsb3cgaW50ZXIt
cHJvdmlkZXIgcGFpcnMgdG8gYmUgY29uZmlndXJlZAogIGFybTogZHRzOiBleHlub3M6IEFkZCBp
bnRlcmNvbm5lY3QgYmluZGluZ3MgZm9yIEV4eW5vczQ0MTIKICBkZXZmcmVxOiBleHlub3MtYnVz
OiBBZGQgaW50ZXJjb25uZWN0IGZ1bmN0aW9uYWxpdHkgdG8gZXh5bm9zLWJ1cwogIGFybTogZHRz
OiBleHlub3M6IEFkZCBpbnRlcmNvbm5lY3RzIHRvIEV4eW5vczQ0MTIgbWl4ZXIKCk1hcmVrIFN6
eXByb3dza2kgKDEpOgogIGRybTogZXh5bm9zOiBtaXhlcjogQWRkIGludGVyY29ubmVjdCBzdXBw
b3J0CgogLi4uL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpICAgIHwgICA1
ICsKIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaSAgICAgICAgICAgICB8ICAgMSAr
CiBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jICAgICAgICAgICAgICAgICAgfCAxNDQgKysr
KysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5jICAg
ICAgICAgfCAgNzEgKysrKysrKystCiBkcml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMgICAgICAg
ICAgICAgICAgICAgfCAgMTYgKy0KIGluY2x1ZGUvbGludXgvaW50ZXJjb25uZWN0LXByb3ZpZGVy
LmggICAgICAgICB8ICAgOCArCiA2IGZpbGVzIGNoYW5nZWQsIDIzMiBpbnNlcnRpb25zKCspLCAx
MyBkZWxldGlvbnMoLSkKCi0tCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
