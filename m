Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4FB102214
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 11:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NG+kxLv1Q/VqL/HzGU1Qtr3+cB+NQr/NK26WYMgcFM=; b=lADRDU1jZfFGQp
	fUTbSQKiYsZvxkG0q5f6A69BVwPKc7KuO9OIu2gLe4L/xBPkjmzEfOoSdHqga+mEltGYVu+Ck+ELd
	Xes+k96yogQE+4G/FrHKjcYO+mfPJ2JfuivL/bhqIX1Yj7bbQr5bw7/G/RhWVIm/ZlFiK6pqnZnO0
	hnDLKHKB0ofwcIY4VevmBHWTQWMsTMGTa228/+8g4SqJ9FLksJ1bUkWTCoj2xk4RkJaaOSgfYnt2S
	w7st+drhS0FkGDyQH/hAFnojJlLqo9B+7HExZHFi0Dvq3187uH3USPrSJ1DlOkGrVWEImat/uIK7Q
	AtQs2n5E+FeFH6gNqopw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX0ip-0006EA-RV; Tue, 19 Nov 2019 10:26:59 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX0ic-0006DU-E7
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 10:26:50 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191119102640euoutp01aac41e783bfecc74be7efdebd951a5af~YiXPv-KXv0653606536euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 10:26:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191119102640euoutp01aac41e783bfecc74be7efdebd951a5af~YiXPv-KXv0653606536euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1574159200;
 bh=D/g3yXR9pamMWPp71JIZbdufxuBthPEXVKwLnjYPhSI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Q8tLl8toyeRFASSpEvCbXJVORGQiUfOpWWUVlok2GzEFl4CqL/PyYaT5GRZlLiPtc
 XiDyNdPsltCrC7rkBhhlzO7JBB/F534myBd0lbXszAxE1AhTKrRRiQTIMUWip0G+w9
 kvALtEiGCuniwxTp7UqHrorAnBZG3/K9qniy9tw4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191119102640eucas1p2ccd37c651175699c42e63d86d6544a56~YiXPlZ4VY1389413894eucas1p2F;
 Tue, 19 Nov 2019 10:26:40 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 8D.44.04469.063C3DD5; Tue, 19
 Nov 2019 10:26:40 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191119102640eucas1p151436fe1b336aaf36450417e2f2376e7~YiXPOwjJg1925519255eucas1p1B;
 Tue, 19 Nov 2019 10:26:40 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191119102640eusmtrp1025d1bd6fd93940781cfd2e7f795cafd~YiXPN9BtY1711617116eusmtrp12;
 Tue, 19 Nov 2019 10:26:40 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-01-5dd3c36071ff
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 06.5B.04117.063C3DD5; Tue, 19
 Nov 2019 10:26:40 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191119102639eusmtip2698f43cd6e73bda1cb8139d05d480895~YiXOnf1IV1570515705eusmtip2F;
 Tue, 19 Nov 2019 10:26:39 +0000 (GMT)
Subject: Re: [PATCH 1/3] dma-direct: unify the dma_capable definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <a3e2d65b-7270-9555-a251-d7ed0c4fb85c@samsung.com>
Date: Tue, 19 Nov 2019 11:26:39 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPdM1+x_4PQ1AfoPY6GuV0e9bk3hv_1EfEdHcLjMwwYxgw@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRjtt3vvdrea/JyGHxVGq4wCSyPjgmEGFpeIKCILQ/SWt1nNabut
 tIiGYQ8TrXzNSeaqMXuqW4oPrJzlI/E57SERVkJQaJFZSGl5d7X873znfIfvHPhoQtNNLaAP
 GY7xRgOn18pVZHXzeGdwfJMnNuTm06XM7bvPZEzp43Cmq6tCwTg/vKCYi84qxFi6HskYd34D
 Yn79nKSYaqtDztS+aSWYSxUdKHIu63nRQ7DOOxflrOvWGTb3lQOxXRYbYutfm+Vs5UiNjHW1
 n2JHnYE7lDGqDQm8/tBx3rgmIl6VaG8dpVJKwlLz++yEGRUGZyIlDXgd9JeUKTKRitbgMgQV
 57MIafiOoMA+KZOGUQS2sSvkjMX2tn1acCB4/adILgoaPIzA+dskYj+8BVw5xYSI/fFKeDnx
 kxINBJ6QwYDtlleQ41DIHM70mtU4AooL7ipETOLlYM7/MsXT9HwcCxccidKKL7QVDXlDKPFO
 yGnNQCIm8GI4WyXdInAADAxd94YDPKyAwe/ZSEodBb3f8qaxH3xqeaiQ8CJoz80iJcNZBO86
 7yukIQuBJ90y7QiHppYeSkxETNUpr1sj0Ztg6EOfTKQB+8CrYV8phA9crS4kJFoNF85ppO0g
 sLY8+He2sbuXuIy01lnVrLPqWGfVsf6/W4rIOyiANwlJOl4INfAnVgtckmAy6FYfSE5yoqk/
 a59s+VaDxnr3uxGmkXaeunWZJ1ZDcceFtCQ3AprQ+qu3v++O1agTuLSTvDE5zmjS84IbLaRJ
 bYD61JzBfRqs447xR3g+hTfOqDJaucCM9INHa8pGdoXtmTgS4U4P6ks9/byh7uPWyc3XqhqH
 Nh6kmE7UtCzSsSI5yv6LKO/P0g9YDJcmdOlRnoyGuCfcV6SjmmOWRC4XjB/H8+rJPancjc98
 bWDY2sptyozmwN+2kGjWtX63jkom9rrayrjd9w4f/HGz46glLTq035w9oCWFRC50FWEUuL9+
 aWv2YwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsVy+t/xe7oJhy/HGnx5ymWxcvVRJosF+60t
 zp/fwG6x6fE1VovOTVsZLWac38dkcWjqXkaL39//sVpsm7WczWLnnRPMFt0bzjI6cHtcvnaR
 2WPTqk42j81L6j0m31jO6HF+xkJGj903G9g8Nr7bweSx+XS1x+dNcgGcUXo2RfmlJakKGfnF
 JbZK0YYWRnqGlhZ6RiaWeobG5rFWRqZK+nY2Kak5mWWpRfp2CXoZS098Zi2YZ1ox9cpS5gbG
 6bpdjJwcEgImEgvvnWbqYuTiEBJYyihxccFSRoiEjMTJaQ2sELawxJ9rXWwQRa8ZJc6db2QH
 SQgLuEls7p/NDGKLCGhKXP/7nRWkiFngP5PE1o4PLCAJIYHFTBJ727hAbDYBQ4mutyCTODl4
 BewkZk9bDTaIRUBVomHqe7C4qECsxPeVnxghagQlTs58AjaHUyBQov9EK1icWcBMYt7mh8wQ
 trxE89bZULa4xK0n85kmMArNQtI+C0nLLCQts5C0LGBkWcUoklpanJueW2ykV5yYW1yal66X
 nJ+7iREYwduO/dyyg7HrXfAhRgEORiUe3hMql2OFWBPLiitzDzFKcDArifD6PboQK8SbklhZ
 lVqUH19UmpNafIjRFOi5icxSosn5wOSSVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7
 NbUgtQimj4mDU6qBcc4iQ7bJZ5W4vmnKGHpbyFyv9m4vmPDZaeE502KvDZZ1ieX6rCpWAQeU
 Xfu0BTSVDu3WaXsSvW1Ll9imf6f/l5014Z3rfPf2l2ip2zY5rA3q+f3fpkirMvjZC7IWPeTT
 sJm6IUgz/XXIgVUTK9NrLFqlZhxhZL/CfnSX+71ydrZZd0PjnxcpsRRnJBpqMRcVJwIA4M4W
 M/YCAAA=
X-CMS-MailID: 20191119102640eucas1p151436fe1b336aaf36450417e2f2376e7
X-Msg-Generator: CA
X-RootMTR: 20191113073648epcas3p214f97ad5937559bebbc937e507fa54d9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191113073648epcas3p214f97ad5937559bebbc937e507fa54d9
References: <20191113073539.9660-1-hch@lst.de>
 <CGME20191113073648epcas3p214f97ad5937559bebbc937e507fa54d9@epcas3p2.samsung.com>
 <20191113073539.9660-2-hch@lst.de>
 <1c227c91-512c-e871-0e03-a27b2c0435d7@samsung.com>
 <CAJKOXPdM1+x_4PQ1AfoPY6GuV0e9bk3hv_1EfEdHcLjMwwYxgw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_022646_681554_63241398 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vinod Koul <vkoul@kernel.org>,
 Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
 linux-mips@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Robin Gong <yibin.gong@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKT24gMTkuMTEuMjAxOSAxMDo0NCwgS3J6eXN6dG9mIEtvemxvd3NraSB3
cm90ZToKPiBPbiBUdWUsIDE5IE5vdiAyMDE5IGF0IDE3OjI3LCBNYXJlayBTenlwcm93c2tpIDxt
LnN6eXByb3dza2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+PiBIaSBDaHJpc3RvcGgsCj4+Cj4+IE9u
IDEzLjExLjIwMTkgMDg6MzUsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+Pj4gQ3VycmVudGx5
IGVhY2ggYXJjaGl0ZWN0dXJlcyB0aGF0IHdhbnRzIHRvIG92ZXJyaWRlIGRtYV90b19waHlzIGFu
ZAo+Pj4gcGh5c190b19kbWEgYWxzbyBoYXMgdG8gcHJvdmlkZSBkbWFfY2FwYWJsZS4gIEJ1dCB0
aGVyZSBpc24ndCByZWFsbHkKPj4+IGFueSBnb29kIHJlYXNvbiBmb3IgdGhhdC4gIHBvd2VycGMg
YW5kIG1pcHMganVzdCBoYXZlIGNvcGllcyBvZiB0aGUKPj4+IGdlbmVyaWMgb25lIG1pbnVzIHRo
ZSBsYXRlc3RzIGZpeCwgYW5kIHRoZSBhcm0gb25lIHdhcyB0aGUgaW5zcGlyYXRpb24KPj4+IGZv
ciBzYWlkIGZpeCwgYnV0IG1pc3NlcyB0aGUgYnVzX2RtYV9tYXNrIGhhbmRsaW5nLgo+Pj4gTWFr
ZSBhbGwgYXJjaGl0ZWN0dXJlcyB1c2UgdGhlIGdlbmVyaWMgdmVyc2lvbiBpbnN0ZWFkLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgo+PiBUaGlz
IHBhdGNoIGJyZWFrcyBETUFlbmdpbmUgUEwzMzAgZHJpdmVyIG9uIFNhbXN1bmcgRXh5bm9zIFNv
Q3M6Cj4KPiBUaGFua3MgTWFyZWsgZm9yIGJpc2VjdGluZyBpdC4gSSB3b25kZXIgd2hldGhlciBp
dCBpcyBhbHNvIHRoZSBjYXVzZQo+IGZvciBib290IGZhaWx1cmVzIEkgc2VlIG9uIE5YUCBWeWJy
aWQgVkY1MCBTb0MgKE5YUC9GcmVlc2NhbGUKPiBmc2wtZWRtYSkgc2luY2UgZmV3IGRheXM6Cj4K
PiBbIDIuODUzNDI4XSBmc2wtZWRtYSA0MDAxODAwMC5kbWEtY29udHJvbGxlcjogb3ZlcmZsb3cg
MHg0MDAyNzAwNysxIG9mCj4gRE1BIG1hc2sgZmZmZmZmZmYgYnVzIG1hc2sgMAo+IFsgMi44NjI1
NjZdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+IFsgMi44NjcyNzNdIFdB
Uk5JTkc6IENQVTogMCBQSUQ6IDEgYXQKPiAvaG9tZS9idWlsZGJvdC93b3JrZXIvYnVpbGRkaXJf
eW9jdG8vYnVpbGQvYnVpbGQvdG1wL3dvcmstc2hhcmVkL2NvbC12ZjUwLXByb2NlcS1tYWlubGlu
ZS1uZXh0L2tlcm5lbC1zb3VyY2Uva2VybmVsL2RtYS9kaXJlY3QuYzozNQo+IHJlcG9ydF9hZGRy
KzB4YzAvMHhmYwo+IFsgMi44ODQzODBdIE1vZHVsZXMgbGlua2VkIGluOgo+IFsgMi44ODc0ODZd
IENQVTogMCBQSUQ6IDEgQ29tbTogc3dhcHBlciBUYWludGVkOiBHIFcKPiA1LjQuMC1yYzctbmV4
dC0yMDE5MTExOC1nNTE5ZWFkOGY2YTMyICMxCj4gWyAyLjg5NzM2NF0gSGFyZHdhcmUgbmFtZTog
RnJlZXNjYWxlIFZ5YnJpZCBWRjV4eC9WRjZ4eCAoRGV2aWNlIFRyZWUpCj4gWyAyLjkwMzg5Ml0g
Wzw4MDEwZGRmYz5dICh1bndpbmRfYmFja3RyYWNlKSBmcm9tIFs8ODAxMGI0Yjg+XQo+IChzaG93
X3N0YWNrKzB4MTAvMHgxNCkKPiBbIDIuOTExNzEyXSBbPDgwMTBiNGI4Pl0gKHNob3dfc3RhY2sp
IGZyb20gWzw4MDExYjA4Yz5dIChfX3dhcm4rMHhkNC8weGVjKQo+IFsgMi45MTg2NTNdIFs8ODAx
MWIwOGM+XSAoX193YXJuKSBmcm9tIFs8ODAxMWIxNTQ+XQo+ICh3YXJuX3Nsb3dwYXRoX2ZtdCsw
eGIwLzB4YjgpCj4gWyAyLjkyNjIxOF0gWzw4MDExYjE1ND5dICh3YXJuX3Nsb3dwYXRoX2ZtdCkg
ZnJvbSBbPDgwMTU1ZjdjPl0KPiAocmVwb3J0X2FkZHIrMHhjMC8weGZjKQo+IFsgMi45MzQyMjFd
IFs8ODAxNTVmN2M+XSAocmVwb3J0X2FkZHIpIGZyb20gWzw4MDE1NjFmMD5dCj4gKGRtYV9kaXJl
Y3RfbWFwX3Jlc291cmNlKzB4OTgvMHhhNCkKPiBbIDIuOTQyNzQ0XSBbPDgwMTU2MWYwPl0gKGRt
YV9kaXJlY3RfbWFwX3Jlc291cmNlKSBmcm9tIFs8ODA0MWQ1ZDQ+XQo+IChmc2xfZWRtYV9wcmVw
X3NsYXZlX2RtYSsweDEyYy8weDE1MCkKPiBbIDIuOTUyNDc1XSBbPDgwNDFkNWQ0Pl0gKGZzbF9l
ZG1hX3ByZXBfc2xhdmVfZG1hKSBmcm9tIFs8ODA0MWQ4Y2M+XQo+IChmc2xfZWRtYV9wcmVwX2Rt
YV9jeWNsaWMrMHgzMC8weDIxYykKPiBbIDIuOTYyMjEzXSBbPDgwNDFkOGNjPl0gKGZzbF9lZG1h
X3ByZXBfZG1hX2N5Y2xpYykgZnJvbSBbPDgwNDUyZTEwPl0KPiAobHB1YXJ0X3J4X2RtYV9zdGFy
dHVwKzB4MTg4LzB4MzZjKQo+IFsgMi45NzE4NzFdIFs8ODA0NTJlMTA+XSAobHB1YXJ0X3J4X2Rt
YV9zdGFydHVwKSBmcm9tIFs8ODA0NTMwNTg+XQo+IChscHVhcnRfc3RhcnR1cCsweDY0LzB4Nzgp
Cj4gWyAyLjk4MDQ3N10gWzw4MDQ1MzA1OD5dIChscHVhcnRfc3RhcnR1cCkgZnJvbSBbPDgwNDRl
OTI0Pl0KPiAodWFydF9zdGFydHVwLnBhcnQuNysweDExMC8weDIzYykKPiBbIDIuOTg5MDgwXSBb
PDgwNDRlOTI0Pl0gKHVhcnRfc3RhcnR1cC5wYXJ0LjcpIGZyb20gWzw4MDQ0ZWFhMD5dCj4gKHVh
cnRfcG9ydF9hY3RpdmF0ZSsweDUwLzB4N2MpCj4gWyAyLjk5Nzg1N10gWzw4MDQ0ZWFhMD5dICh1
YXJ0X3BvcnRfYWN0aXZhdGUpIGZyb20gWzw4MDQzOGRjMD5dCj4gKHR0eV9wb3J0X29wZW4rMHg3
NC8weGMwKQo+IFsgMy4wMDYxMTFdIFs8ODA0MzhkYzA+XSAodHR5X3BvcnRfb3BlbikgZnJvbSBb
PDgwNDRiZTMwPl0gKHVhcnRfb3BlbisweDE4LzB4MjApCj4gWyAzLjAxMzU4OF0gWzw4MDQ0YmUz
MD5dICh1YXJ0X29wZW4pIGZyb20gWzw4MDQzMWI0Yz5dICh0dHlfb3BlbisweDEwOC8weDQyOCkK
PiBbIDMuMDIwNzk0XSBbPDgwNDMxYjRjPl0gKHR0eV9vcGVuKSBmcm9tIFs8ODAxZWRiNDg+XSAo
Y2hyZGV2X29wZW4rMHhhYy8weDE2NCkKPiBbIDMuMDI4MDk4XSBbPDgwMWVkYjQ4Pl0gKGNocmRl
dl9vcGVuKSBmcm9tIFs8ODAxZTU1Yzg+XQo+IChkb19kZW50cnlfb3BlbisweDIyYy8weDNlNCkK
PiBbIDMuMDM2MDEwXSBbPDgwMWU1NWM4Pl0gKGRvX2RlbnRyeV9vcGVuKSBmcm9tIFs8ODAxZjcy
YTg+XQo+IChwYXRoX29wZW5hdCsweDRhNC8weGY3OCkKPiBbIDMuMDQzOTEyXSBbPDgwMWY3MmE4
Pl0gKHBhdGhfb3BlbmF0KSBmcm9tIFs8ODAxZjhkMzQ+XQo+IChkb19maWxwX29wZW4rMHg3MC8w
eGRjKQo+IFsgMy4wNTE0NzJdIFs8ODAxZjhkMzQ+XSAoZG9fZmlscF9vcGVuKSBmcm9tIFs8ODAx
ZTY5OTg+XQo+IChkb19zeXNfb3BlbisweDEyOC8weDFmNCkKPiBbIDMuMDU5MjE3XSBbPDgwMWU2
OTk4Pl0gKGRvX3N5c19vcGVuKSBmcm9tIFs8ODBhMDBlZTA+XQo+IChrZXJuZWxfaW5pdF9mcmVl
YWJsZSsweDE1MC8weDFjNCkKPiBbIDMuMDY3NjU4XSBbPDgwYTAwZWUwPl0gKGtlcm5lbF9pbml0
X2ZyZWVhYmxlKSBmcm9tIFs8ODA2OGUyMDg+XQo+IChrZXJuZWxfaW5pdCsweDgvMHgxMTApCj4g
WyAzLjA3NTkxN10gWzw4MDY4ZTIwOD5dIChrZXJuZWxfaW5pdCkgZnJvbSBbPDgwMTAxMGU4Pl0K
PiAocmV0X2Zyb21fZm9yaysweDE0LzB4MmMpCj4gWyAzLjA4MzUzOV0gRXhjZXB0aW9uIHN0YWNr
KDB4ODY4NDNmYjAgdG8gMHg4Njg0M2ZmOCkKPiBbIDMuMDg4NjMxXSAzZmEwOiAwMDAwMDAwMCAw
MDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAo+IFsgMy4wOTY4NjZdIDNmYzA6IDAwMDAwMDAwIDAw
MDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwCj4gMDAwMDAwMDAgMDAwMDAwMDAgMDAw
MDAwMDAKPiBbIDMuMTA1MTAzXSAzZmUwOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAw
MDAwMCAwMDAwMDAxMyAwMDAwMDAwMAo+IFsgMy4xMTE3NTJdIC0tLVsgZW5kIHRyYWNlIDZmYjY5
OTgwMjI1NmEzMDkgXS0tLQo+IFsgICAgMy4xMTY0MjNdIGZzbC1scHVhcnQgNDAwMjcwMDAuc2Vy
aWFsOiBDYW5ub3QgcHJlcGFyZSBjeWNsaWMgRE1BCj4gWyAgICAzLjE5Mjk2OF0gVkZTOiBNb3Vu
dGVkIHJvb3QgKG5mczQgZmlsZXN5c3RlbSkgb24gZGV2aWNlIDA6MTMuCj4gWyAgICAzLjIwMTQz
Ml0gZGV2dG1wZnM6IG1vdW50ZWQKPiBbICAgIDMuMjEwOTg1XSBGcmVlaW5nIHVudXNlZCBrZXJu
ZWwgbWVtb3J5OiAxMDI0Swo+IFsgICAgMy4yMTc4NTRdIFJ1biAvc2Jpbi9pbml0IGFzIGluaXQg
cHJvY2Vzcwo+IFsgICAgNC42NDMzNTVdIHN5c3RlbWRbMV06IFN5c3RlbSB0aW1lIGJlZm9yZSBi
dWlsZCB0aW1lLCBhZHZhbmNpbmcgY2xvY2suCj4gWyAgICA0Ljc3NDEwNl0gcmFuZG9tOiBzeXN0
ZW1kOiB1bmluaXRpYWxpemVkIHVyYW5kb20gcmVhZCAoMTYgYnl0ZXMgcmVhZCkKPiBbICAgIDQu
ODM4MzYxXSBzeXN0ZW1kWzFdOiBzeXN0ZW1kIDIzMiBydW5uaW5nIGluIHN5c3RlbSBtb2RlLiAo
LVBBTQo+IC1BVURJVCAtU0VMSU5VWCAtSU1BIC1BUFBBUk1PUiAtU01BQ0sgK1NZU1ZJTklUICtV
VE1QIC1MSUJDUllQVFNFVFVQCj4gLUdDUllQVCAtR05VVExTICtBQ0wgK1haIC1MWjQgLVNFQ0NP
TVAgK0JMS0lEIC1FTEZVVElMUyArS01PRCAtSUROKQo+IFsgICAgNC44NTg5OTddIHN5c3RlbWRb
MV06IERldGVjdGVkIGFyY2hpdGVjdHVyZSBhcm0uCj4gWyAgICA0Ljg3MzQzOF0gZnNsLWxwdWFy
dCA0MDAyNzAwMC5zZXJpYWw6IENhbm5vdCBwcmVwYXJlIFRYIHNsYXZlIERNQSEKPiBbICAgIDQu
ODgwMTM4XSBmc2wtbHB1YXJ0IDQwMDI3MDAwLnNlcmlhbDogQ2Fubm90IHByZXBhcmUgVFggc2xh
dmUgRE1BIQo+IFsgICAgNC44ODY1ODVdIGZzbC1scHVhcnQgNDAwMjcwMDAuc2VyaWFsOiBDYW5u
b3QgcHJlcGFyZSBUWCBzbGF2ZSBETUEhCj4gWyAgICA0Ljg5MzEyNF0gZnNsLWxwdWFydCA0MDAy
NzAwMC5zZXJpYWw6IENhbm5vdCBwcmVwYXJlIFRYIHNsYXZlIERNQSEKPiBbICAgIDQuODk5Njc5
XSBmc2wtbHB1YXJ0IDQwMDI3MDAwLnNlcmlhbDogQ2Fubm90IHByZXBhcmUgVFggc2xhdmUgRE1B
IQo+IFsgICAgNC45MDYxMTBdIGZzbC1scHVhcnQgNDAwMjcwMDAuc2VyaWFsOiBDYW5ub3QgcHJl
cGFyZSBUWCBzbGF2ZSBETUEhCj4gWyAgICA0LjkxMjYxNl0gZnNsLWxwdWFydCA0MDAyNzAwMC5z
ZXJpYWw6IENhbm5vdCBwcmVwYXJlIFRYIHNsYXZlIERNQSEKPgo+IEFsdGhvdWdoIG1heWJlIHRo
YXQncyBqdXN0IHRoZSBmc2wtZWRtYSBwcm9ibGVtPwoKVGhpcyBpcyB0aGUgc2FtZSBpc3N1ZS4K
CkEgcXVpY2sgbG9va3MgYXQgdGhlIGRtYS1kaXJlY3QgY29kZSByZXZlYWxlZCB0aGF0IHRoZSAK
ZG1hX2RpcmVjdF9tYXBfcmVzb3VyY2UoKSBpcyBicm9rZW4gYWZ0ZXIgdGhpcyB1bmlmaWNhdGlv
biwgYmVjYXVzZSBpdCAKY2FsbHMgZG1hX2RpcmVjdF9wb3NzaWJsZSgpLCB3aGljaCB0aGVuIGNh
bGxzIGRtYV9jYXBhYmxlKCkuIFRoZSBnZW5lcmljIApkbWFfY2FwYWJsZSgpIGZyb20gaW5jbHVk
ZS9saW51eC9kbWEtZGlyZWN0LmggY2hlY2tzIGlmIHRoZSBwcm92aWRlZCAKYWRkcmVzcyBpcyBp
biBSQU0gbWVtb3J5IHJhbmdlLCB3aGF0IGluIHRoZSBjYXNlIG9mIApkbWFfZGlyZWN0X21hcF9y
ZXNvdXJjZSgpIGlzIG5vdCB0cnVlLgoKQSBxdWljayBmaXggZm9yIHRoaXMgaXNzdWUgaXMgdG8g
aW5saW5lIGRtYV9kaXJlY3RfcG9zc2libGUoKSB3aXRoIGEgCm1vZGlmaWVkIGRtYV9jYXBhYmxl
KCkgZGlyZWN0bHkgdG8gdGhlIGRtYV9kaXJlY3RfbWFwX3Jlc291cmNlKCkgCmZ1bmN0aW9uICh3
aXRob3V0IHRoZSBtaW5fbG93X3BmbiBjaGVjayk6CgpkaWZmIC0tZ2l0IGEva2VybmVsL2RtYS9k
aXJlY3QuYyBiL2tlcm5lbC9kbWEvZGlyZWN0LmMKaW5kZXggMDc3ODc2YWU1Yzc0Li5iNmRkNmEw
YjMzOGIgMTAwNjQ0Ci0tLSBhL2tlcm5lbC9kbWEvZGlyZWN0LmMKKysrIGIva2VybmVsL2RtYS9k
aXJlY3QuYwpAQCAtNDExLDggKzQxMSwxMCBAQCBkbWFfYWRkcl90IGRtYV9kaXJlY3RfbWFwX3Jl
c291cmNlKHN0cnVjdCBkZXZpY2UgCipkZXYsIHBoeXNfYWRkcl90IHBhZGRyLAogwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBzaXplLCBlbnVtIGRtYV9kYXRhX2RpcmVjdGlv
biBkaXIsIHVuc2lnbmVkIGxvbmcgCmF0dHJzKQogwqB7CiDCoMKgwqDCoMKgwqDCoCBkbWFfYWRk
cl90IGRtYV9hZGRyID0gcGFkZHI7CivCoMKgwqDCoMKgwqAgZG1hX2FkZHJfdCBlbmQgPSBkbWFf
YWRkciArIHNpemUgLSAxOwoKLcKgwqDCoMKgwqDCoCBpZiAodW5saWtlbHkoIWRtYV9kaXJlY3Rf
cG9zc2libGUoZGV2LCBkbWFfYWRkciwgc2l6ZSkpKSB7CivCoMKgwqDCoMKgwqAgaWYgKHVubGlr
ZWx5KHN3aW90bGJfZm9yY2UgPT0gU1dJT1RMQl9GT1JDRSB8fCAhZGV2LT5kbWFfbWFzayB8fAor
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5kID4gbWluX25vdF96ZXJv
KCpkZXYtPmRtYV9tYXNrLCAKZGV2LT5idXNfZG1hX21hc2spKSkgewogwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJlcG9ydF9hZGRyKGRldiwgZG1hX2FkZHIsIHNpemUpOwogwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBETUFfTUFQUElOR19FUlJPUjsKIMKgwqDC
oMKgwqDCoMKgIH0KCkNocmlzdG9waDogTGV0IG1lIGtub3cgaWYgdGhpcyBpcyBhIHByb3BlciBm
aXggZm9yIHlvdSwgdGhlbiBJIHdpbGwgc2VuZCAKaXQgYXMgYSBmdWxsIHBhdGNoLgoKQmVzdCBy
ZWdhcmRzCi0tIApNYXJlayBTenlwcm93c2tpLCBQaEQKU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBv
bGFuZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
