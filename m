Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE6F12AB07
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 09:40:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWFrVcjZvew5WqPhz9Cv9JE2pgGVkxqE5mQegd56/IQ=; b=qu0v2WugIqyPrI
	1udurj3n3bk700e4TmPUk65PSV7O2xGQDUPTaaDogTrOKI4v1nrZ69dRu7LqSAVnUy11ntFWF0lQu
	qiB8P6RI2jaDDFR23tKqaMJNziaD4tyqForHV0RnyQjSoLU+OfDs3dsDrwMZQZh7icp+uGRIXSunL
	HTHXWGwhiHrBGUclFPwP73DZKWYlUCkRXfElz5x77g6BCq9QocaggjyDBISnPy7uO9oOiQNLIouvV
	NVqR50FcuCyQYjjEOEL3qXQXKJ30rgpe97z4+VCClcejO/4+V6D3Sv8nI2T7eniVHQeq8/XYNlnHf
	lng+kBC4dVxj5LBc2WHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikOh8-0004yG-3t; Thu, 26 Dec 2019 08:40:34 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikOgv-0004vz-Ej
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 08:40:23 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191226084014epoutp025ec8e47018c99086abdbde54eeada806~j3x35fYzA2359323593epoutp02y
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 08:40:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191226084014epoutp025ec8e47018c99086abdbde54eeada806~j3x35fYzA2359323593epoutp02y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1577349614;
 bh=dT1jdzLXqQk1HbSpHz9Xm0UikVHPXoEORT4MA39J+xA=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=oQy4guffTQfshsBfIEf/xXj0Xwsj6fXVAg3uQZ0XzzptyWUMSVPM+dO2p/6MjcaI2
 VxJ450vQCclGpX3VZgNYTZv8FKzbK33dcs9dymxGHm/DUumM4NUdbNbgoSRfK1SV08
 FFh6Eei+/WcKrgpzChZVefpMwA5QRlZjWq0fuxQM=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20191226084014epcas5p374a6b7fab3b8651282ecc8a0572bb3cb~j3x3oHNOg1792117921epcas5p3Q;
 Thu, 26 Dec 2019 08:40:14 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 20.86.19726.DE1740E5; Thu, 26 Dec 2019 17:40:14 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20191226084013epcas5p1ee20f34b2a92a048c9509d2db7f33c47~j3x3HogFA0110601106epcas5p1F;
 Thu, 26 Dec 2019 08:40:13 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191226084013epsmtrp2a826e03d7991ee4c69cd91ae250437ea~j3x3Gsowj0738407384epsmtrp2a;
 Thu, 26 Dec 2019 08:40:13 +0000 (GMT)
X-AuditID: b6c32a49-7c1ff70000014d0e-49-5e0471edef1d
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 48.05.10238.DE1740E5; Thu, 26 Dec 2019 17:40:13 +0900 (KST)
Received: from alimakhtar02 (unknown [107.111.84.32]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191226084010epsmtip12e0d5bf2805c3aa1df1c575834167b22~j3x0uWbxT2568525685epsmtip1S;
 Thu, 26 Dec 2019 08:40:10 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Stanley Chu'" <stanley.chu@mediatek.com>, "'Alim Akhtar'"
 <alim.akhtar@gmail.com>
In-Reply-To: <1577259276.13056.54.camel@mtkswgap22>
Subject: RE: [PATCH v2 1/2 RESEND] soc: mediatek: add header for SiP service
 interface
Date: Thu, 26 Dec 2019 14:10:09 +0530
Message-ID: <000001d5bbc8$1714f380$453eda80$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQLfsl7NswcOymnlnDUFcsSWGXSx+QFOXFOPAqs67pcB7B9dkQIaRF/qAcXWdxmlafunoA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+3bO2c5Gq9NR8s0gbCSVlmYWfFGUROExuvhHiEloBzvNyMvc
 1K6QlaltylqR5jAx80JXy1SmYtoqbWimqZWSQqUsrawcGWY3t6Pkf7/ve56H533hpQl2lPKk
 D8YnCdp4PlYlVZDVj5YvXTmSSEauMiTikt7juKWgm8BD491S/PDtORLf+GSR4p8jj2W46HW1
 BJ/9O0zgQWMliSvev6RwZ22+FHee6UDY8GrSV9b8R4JPpwXitKbvJK4anaBwSVUPCmK5GnOf
 jDtf1Ii4+8UnuTRbA8n9KM+Uct8Ge0mussGBOEfFIi6j0SAJlUcoNuwXYg+mCFr/jfsUMRXW
 AVJjhCMD1jWpKMNDj+Q0MGvgTZYN6ZGCZpk6BKafNyVOgWVGEYz27BGFMQTFef3EdMJueioT
 hXoEV1oHKfExjOCsXe9ySZmVYLmWLnWyO7MHXnzUu0wEkyaDy5/trg45Ewjttj8udmPC4V1R
 lotJxhuef+qlnKxk1oHR0iUTeR7Y8gZIJxOML5Re/Tg1kheMD5ZSYlkY5OV2UaLHA56MZxHO
 YmDaZGDSX6LEwBaY+H1nit1guLlSJrInOEbqJ6emJ/kQZNUGit8noKSgiRR5EzR25ZNOC8Es
 h/Jaf7FqDmRPDEjEpBIy01nR7Q1nRrqnkgvBZDBMlXJge5YtOY8Wm2csZp6xmHnGAub/ZYWI
 vIEWCBpdnFrQrdUExAuH/XR8nC45Xu0XnRBXgVyX6BNiQea27VbE0Eg1W3n3ABHJUnyK7mic
 FQFNqNyVN7UoklXu548eE7QJUdrkWEFnRQtpUuWhvEB172UZNZ8kHBIEjaCdViW03DMVhSW9
 /7Durv98U/Du+q2595aNbzW6T9wOCY+aS0XPWa/QOBJm4exbq4Pp6D6fspoFb+Se7FrfnG2N
 fhZtsNK4OfxCR8OXHRcjck6dvj7GF6bSl3e2Nod+zfzFL3HkD6v//rBjR/gDt57O8hVke+au
 5P7ClpqhvsURXheL7HVR+eogFamL4QN8CK2O/weExJqahQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJIsWRmVeSWpSXmKPExsWy7bCSnO7bQpY4g3WPpCyW3qq2OD3vKrPF
 y59X2SwOPuxksVj1Zgebxa93R9gtFt3YxmTR+v8Vs8XT/i0sFpseX2O1uLxrDpvF5eaLjBbd
 14Hqlh//x2TR1GJs0XLsK4vF1k+/WS2Wbr3J6CDksXPWXXaPCYsOMHpsXlLv0XJyP4vH9/Ud
 bB4fn95i8diy/zOjx+dNch7tB7qZAjijuGxSUnMyy1KL9O0SuDK2nPvLVLBasGLWx7wGxt+8
 XYycHBICJhLPJ55g72Lk4hAS2M0ocXBPMxtEQlri+sYJ7BC2sMTKf8+hil4wSsy708wCkmAT
 0JXYsbgNrEFEIFKibdkRZpAiZoE2dolHJ5exQXS8YpJ4s/EDWBWngLHEhZP/mEBsYYEwibWN
 /8FsFgFVifNvbrGC2LwClhL9O66wQ9iCEidnPgHbxiygLfH05lM4e9nC18wQ5ylI/Hy6jBXi
 ijCJmdOvsELUiEsc/dnDPIFReBaSUbOQjJqFZNQsJC0LGFlWMUqmFhTnpucWGxYY5qWW6xUn
 5haX5qXrJefnbmIER7iW5g7Gy0viDzEKcDAq8fBuSGOOE2JNLCuuzD3EKMHBrCTCu7qIMU6I
 NyWxsiq1KD++qDQntfgQozQHi5I479O8Y5FCAumJJanZqakFqUUwWSYOTqkGxnaWz9t+XK2L
 uWMY87Jtf8LT5o9eXXN6Lm/Z+TAjJNV0aVKh989YYV6rS3aitvNNs0IK10z5s8fpc5/j4bsc
 L9zZbb8mHP/ENmmOk7r97nU3xaSvzeHxTb9RdI3X10Rd4c2OfEG2eykudc31h3k9JZ5Mbvzf
 c8TDiXWeTqfif51/c7Lc0uK+KLEUZyQaajEXFScCAGEY9LjsAgAA
X-CMS-MailID: 20191226084013epcas5p1ee20f34b2a92a048c9509d2db7f33c47
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20191225073443epcas3p3dfb0484e3bef98cba01c063ca62e26fe
References: <1576468137-17220-1-git-send-email-stanley.chu@mediatek.com>
 <1576468137-17220-2-git-send-email-stanley.chu@mediatek.com>
 <CAGOxZ50RKYAEw=HwYMH=Jm7cagUV12C-fwhauJhJqx6HscAmFA@mail.gmail.com>
 <1576804540.13056.22.camel@mtkswgap22>
 <CGME20191225073443epcas3p3dfb0484e3bef98cba01c063ca62e26fe@epcas3p3.samsung.com>
 <1577259276.13056.54.camel@mtkswgap22>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_004021_852883_2EC00F9C 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: f.fainelli@gmail.com, linux-scsi@vger.kernel.org, "'Martin K.
 Petersen'" <martin.petersen@oracle.com>,
 =?utf-8?B?J0xlb24gQ2hlbiAo6Zmz5paH6Y+YKSc=?= <Leon.Chen@mediatek.com>,
 =?utf-8?Q?'Andy_Teng_=28=1B$B{}G!9=28=1B=28B=29'?= <Andy.Teng@mediatek.com>,
 "'James E.J. Bottomley'" <jejb@linux.ibm.com>,
 =?utf-8?Q?'Chun-Hung_Wu_=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29'?=
 <Chun-hung.Wu@mediatek.com>,
 =?utf-8?Q?'Kuohong_Wang_=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29'?=
 <kuohong.wang@mediatek.com>, 'open list' <linux-kernel@vger.kernel.org>,
 'Avri Altman' <avri.altman@wdc.com>, linux-mediatek@lists.infradead.org,
 =?utf-8?Q?'Peter_Wang_=28=E7=8E=8B=E4=BF=A1=E5=8F=8B=29'?=
 <peter.wang@mediatek.com>, 'Matthias Brugger' <matthias.bgg@gmail.com>,
 'Pedro Sousa' <pedrom.sousa@synopsys.com>,
 linux-arm-kernel@lists.infradead.org,
 "'Bean Huo \(beanhuo\)'" <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RhbmxleSwKSXRzIG9rLCBJIHdpbGwgdGFrZSBhIGxvb2sgaW4geW91ciBuZXcgcGF0Y2gg
c2V0IHNvb24uClRoYW5rcwoKUmVnYXJkcywKQWxpbQoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQo+IEZyb206IFN0YW5sZXkgQ2h1IDxzdGFubGV5LmNodUBtZWRpYXRlay5jb20+Cj4gU2Vu
dDogMjUgRGVjZW1iZXIgMjAxOSAxMzowNQo+IFRvOiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJA
Z21haWwuY29tPgo+IENjOiBmLmZhaW5lbGxpQGdtYWlsLmNvbTsgbGludXgtc2NzaUB2Z2VyLmtl
cm5lbC5vcmc7IE1hcnRpbiBLLiBQZXRlcnNlbgo+IDxtYXJ0aW4ucGV0ZXJzZW5Ab3JhY2xlLmNv
bT47IExlb24gQ2hlbiAo6Zmz5paH6Y+YKQ0KPiA8TGVvbi5DaGVuQG1lZGlhdGVrLmNvbT47IEFu
ZHkgVGVuZyAoGyRCe31HITkoGyhCKQ0KPiA8QW5keS5UZW5nQG1lZGlhdGVrLmNvbT47IEphbWVz
IEUuSi4gQm90dG9tbGV5IDxqZWpiQGxpbnV4LmlibS5jb20+Ow0KPiBDaHVuLUh1bmcgV3UgKOW3
q+mnv+WujykgPENodW4taHVuZy5XdUBtZWRpYXRlay5jb20+OyBLdW9ob25nIFdhbmcgKOeOiw0K
PiDlnIvptLspIDxrdW9ob25nLndhbmdAbWVkaWF0ZWsuY29tPjsgb3BlbiBsaXN0IDxsaW51eC0N
Cj4ga2VybmVsQHZnZXIua2VybmVsLm9yZz47IEF2cmkgQWx0bWFuIDxhdnJpLmFsdG1hbkB3ZGMu
Y29tPjsgbGludXgtDQo+IG1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmc7IFBldGVyIFdhbmcg
KOeOi+S/oeWPiykNCj4gPHBldGVyLndhbmdAbWVkaWF0ZWsuY29tPjsgQWxpbSBBa2h0YXIgPGFs
aW0uYWtodGFyQHNhbXN1bmcuY29tPjsNCj4gTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdn
QGdtYWlsLmNvbT47IFBlZHJvIFNvdXNhDQo+IDxwZWRyb20uc291c2FAc3lub3BzeXMuY29tPjsg
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBCZWFuDQo+IEh1byAoYmVhbmh1
bykgPGJlYW5odW9AbWljcm9uLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAxLzIgUkVT
RU5EXSBzb2M6IG1lZGlhdGVrOiBhZGQgaGVhZGVyIGZvciBTaVAgc2VydmljZQ0KPiBpbnRlcmZh
Y2UNCj4gDQo+IEhpIEFsaW0sDQo+IA0KPiBXb3VsZCB5b3UgdGhpbmsgYmVsb3cgZXhwbGFuYXRp
b24gaXMgT0sgdG8geW91Pw0KPiANCj4gQlRXLCBGWUksIHRoaXMgc2VyaWVzIHdhcyBjb21iaW5l
ZCB0byB0aGUgbmV3IHNlcmllcyAic2NzaTogdWZzOiBhZGQgTWVkaWFUZWsNCj4gdmVuZG9yIGlt
cGxlbWVudGF0aW9ucyIgd2l0aCB0aGlzIHNhbWUgcGF0Y2ggaW4gaXQuDQo+IA0KPiBUaGFua3Ms
DQo+IFN0YW5sZXkNCj4gDQo+IA0KPiBPbiBGcmksIDIwMTktMTItMjAgYXQgMDk6MTUgKzA4MDAs
IFN0YW5sZXkgQ2h1IHdyb3RlOg0KPiA+IEhpIEFsaW0sDQo+ID4NCj4gPiBPbiBGcmksIDIwMTkt
MTItMjAgYXQgMDI6MDAgKzA4MDAsIEFsaW0gQWtodGFyIHdyb3RlOg0KPiA+ID4gPiArLyogVUZT
IHJlbGF0ZWQgU01DIGNhbGwgKi8NCj4gPiA+ID4gKyNkZWZpbmUgTVRLX1NJUF9VRlNfQ09OVFJP
TCBcDQo+ID4gPiA+ICsgICAgICAgTVRLX1NJUF9TTUNfQ01EKDB4Mjc2KQ0KPiA+ID4gPiArDQo+
ID4gPiBIb3cgYWJvdXQgbW92aW5nIFVGUyBzcGVjaWZpYyBzdHVmZiB0byBNVEsgVUZTIGRyaXZl
ciBhbmQgaW5jbHVkZQ0KPiA+ID4gdGhpcyBoZWFkZXIgaW4gZHJpdmVyIGZpbGU/DQo+ID4gPiBS
ZXN0IGxvb2tzIGZpbmUuDQo+ID4NCj4gPiBUaGFua3Mgc28gbXVjaCBmb3IgeW91ciByZXZpZXcu
DQo+ID4NCj4gPiBPdXIgaW50ZW50aW9uIGlzIHRvIGNvbGxlY3QgYWxsIFNNQyBjYWxsIGNvbW1h
bmQgdHlwZXMgaW4gTWVkaWFUZWsNCj4gPiBDaGlwc2V0cyBoZXJlIGZvciBlYXNpZXIgbWFuYWdl
bWVudC4NCj4gPg0KPiA+IFRoaXMgaXMgdGhlIGZpcnN0IHRpbWUgd2Ugc2hvdyB0aGlzIGhlYWRl
ciB0aHVzIG9ubHkgVUZTIHJlbGF0ZWQgc3R1ZmYNCj4gPiBpcyBwcmVzZW50IGhlcmUuDQo+ID4N
Cj4gPiA+ID4gKyNlbmRpZg0KPiA+ID4gPiAtLQ0KPiA+ID4gPiAyLjE4LjANCj4gPiA+DQo+ID4g
Pg0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+IFN0YW5sZXkNCj4gPg0KPiANCg0KDQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
