Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C3520003D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 04:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kax80v1cmEgvG/X6Erku9gUr6lM0+CbLJuwsidbTdbY=; b=nVXDpv+Jk97RSCaHOGVIoAfqD
	ASCL1+U4fKWU4b2748S86EFS7tSWsxPGo9Fa6kedrOLL0ZyNN9eCUmmRg+kTd4KAjKdx4U/+MUPD0
	Xe37ws9gECs9QdW7gGpDmGDxBLVZopW6uHMvAnDGK+rliKSbJEYEySgwZuSD9JpU4oYK/IDWDk8tP
	cHshsw8fDNAXSksHG4Sd2RAkf5TUcYjAwfN4yxdHufbTnMhFalpHyk4AjToQur6I12STvftwJzOgM
	MNl3A3zT5qY5Rwa/CNGGnE89U9pViHkFCuL38s+TknSuw0g+9fuxMs1oTWEb3nPkx0YtWMkE4/+i4
	Jq+cbmhzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm6ql-0003YE-UP; Fri, 19 Jun 2020 02:33:51 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm6qS-0003Wg-Al; Fri, 19 Jun 2020 02:33:34 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05J2M1G0042653;
 Fri, 19 Jun 2020 02:32:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=UyMy5Tmtn8SxB3aG86YVpdeEy7sD5e+0SRxpRYnWQg8=;
 b=Ef95icW4/Iu21SU6xAptPu051RYbbm4UB8f9AQ7VSQm7EqRuUVim7yFv+68dFUw+wP9D
 8i28GDXpzcGimf1hqBK88MWCO6fc0F3tlVzIN1a8i74cD6fjAk+qVN8NkR5b6gy3MmaP
 66PfGocZyGv7ShPRVMpF/r8DnpcnQf91TtsXn7968TIf8Mpc5JLtBCriMnXYaWYjZgn2
 W6Y42Q6mcqUyJ83vTJHhTYm4AoirBK/Vv4BpUK0i4E/dqYbEc9qqih/4enWn8vBO0P9f
 ykmvqx+Hv80jrK0JbMbDjQCg/+Ibo2o6qOOXXKdcIK+jUB21YzlIB4LTcO+gUANSNhQH pA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 31q6604cuw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 02:32:53 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05J2NEtN125299;
 Fri, 19 Jun 2020 02:32:52 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 31q66qrejj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jun 2020 02:32:52 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05J2WbnF025544;
 Fri, 19 Jun 2020 02:32:37 GMT
Received: from [192.168.1.126] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Jun 2020 19:32:37 -0700
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Bhupesh Sharma <bhsharma@redhat.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
 <303695cc-d3ea-9f51-1489-07d27d4253d4@oracle.com>
 <CACi5LpOZzdfEKUYAfYxtgeUbk9K6YFVUKLaGS8XoS0kForjH9A@mail.gmail.com>
 <F64A309C-B9C0-45F2-A50D-D677005C33A6@oracle.com>
 <CAJ2QiJJE-jeRL1HPUZCwi1LtV9CBMmYrsOaS6vX1R1sJ6Z1t8g@mail.gmail.com>
 <6EA47B07-5119-49DF-9980-12A2066F22CA@oracle.com>
 <CAJ2QiJJhUCnobrMHui5=6zLzgy3KsoPxrqiH_oYT8Jhb5MkmbA@mail.gmail.com>
 <8463464e-5461-f328-621c-bacc6a3b88dd@huawei.com>
 <8E0D45DC-12BF-437D-A342-03E974D9C6D4@oracle.com>
 <CACi5LpN-+NRnaDoWWWidbzma8BNzmofA5FQBV=cPF1Mc84FpFg@mail.gmail.com>
 <751bbe2512628ff38002db33ce02af051d080cd2.camel@suse.de>
From: John Donnelly <john.p.donnelly@oracle.com>
Message-ID: <8ca6c3e9-b8ab-77c3-a1d3-beb513c22f1b@oracle.com>
Date: Thu, 18 Jun 2020 21:32:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <751bbe2512628ff38002db33ce02af051d080cd2.camel@suse.de>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 mlxscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006190015
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 clxscore=1015 mlxlogscore=999 suspectscore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006190015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_193332_505854_D716D549 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>, john.p.donnelly@oracle.com,
 Arnd Bergmann <arnd@arndb.de>, Baoquan He <bhe@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 chenzhou <chenzhou10@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 RuiRui Yang <dyoung@redhat.com>, Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>, guohanjun@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDYvNC8yMCAxMjowMSBQTSwgTmljb2xhcyBTYWVueiBKdWxpZW5uZSB3cm90ZToKPiBPbiBU
aHUsIDIwMjAtMDYtMDQgYXQgMDE6MTcgKzA1MzAsIEJodXBlc2ggU2hhcm1hIHdyb3RlOgo+PiBI
aSBBbGwsCj4+Cj4+IE9uIFdlZCwgSnVuIDMsIDIwMjAgYXQgOTowMyBQTSBKb2huIERvbm5lbGx5
IDxqb2huLnAuZG9ubmVsbHlAb3JhY2xlLmNvbT4KPj4gd3JvdGU6Cj4+Pgo+Pj4+IE9uIEp1biAz
LCAyMDIwLCBhdCA4OjIwIEFNLCBjaGVuemhvdSA8Y2hlbnpob3UxMEBodWF3ZWkuY29tPiB3cm90
ZToKPj4+Pgo+Pj4+IEhpLAo+Pj4+Cj4+Pj4KPj4+PiBPbiAyMDIwLzYvMyAxOTo0NywgUHJhYmhh
a2FyIEt1c2h3YWhhIHdyb3RlOgo+Pj4+PiBIaSBDaGVuLAo+Pj4+Pgo+Pj4+PiBPbiBUdWUsIEp1
biAyLCAyMDIwIGF0IDg6MTIgUE0gSm9obiBEb25uZWxseSA8am9obi5wLmRvbm5lbGx5QG9yYWNs
ZS5jb20KPj4+Pj4+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+PiBPbiBKdW4gMiwgMjAyMCwgYXQgMTI6
MzggQU0sIFByYWJoYWthciBLdXNod2FoYSA8Cj4+Pj4+Pj4gcHJhYmhha2FyLnBraW5AZ21haWwu
Y29tPiB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+IE9uIFR1ZSwgSnVuIDIsIDIwMjAgYXQgMzoyOSBB
TSBKb2huIERvbm5lbGx5IDwKPj4+Pj4+PiBqb2huLnAuZG9ubmVsbHlAb3JhY2xlLmNvbT4gd3Jv
dGU6Cj4+Pj4+Pj4+IEhpIC4gIFNlZSBiZWxvdyAhCj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBPbiBKdW4g
MSwgMjAyMCwgYXQgNDowMiBQTSwgQmh1cGVzaCBTaGFybWEgPGJoc2hhcm1hQHJlZGhhdC5jb20+
Cj4+Pj4+Pj4+PiB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBIaSBKb2huLAo+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+IE9uIFR1ZSwgSnVuIDIsIDIwMjAgYXQgMTowMSBBTSBKb2huIERvbm5lbGx5IDwK
Pj4+Pj4+Pj4+IEpvaG4uUC5kb25uZWxseUBvcmFjbGUuY29tPiB3cm90ZToKPj4+Pj4+Pj4+PiBI
aSwKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gT24gNi8xLzIwIDc6MDIgQU0sIFBy
YWJoYWthciBLdXNod2FoYSB3cm90ZToKPj4+Pj4+Pj4+Pj4gSGkgQ2hlbiwKPj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+Pj4gT24gVGh1LCBNYXkgMjEsIDIwMjAgYXQgMzowNSBQTSBDaGVuIFpob3UgPAo+
Pj4+Pj4+Pj4+PiBjaGVuemhvdTEwQGh1YXdlaS5jb20+IHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4gVGhp
cyBwYXRjaCBzZXJpZXMgZW5hYmxlIHJlc2VydmluZyBjcmFzaGtlcm5lbCBhYm92ZSA0RyBpbgo+
Pj4+Pj4+Pj4+Pj4gYXJtNjQuCj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4gVGhlcmUgYXJlIGZv
bGxvd2luZyBpc3N1ZXMgaW4gYXJtNjQga2R1bXA6Cj4+Pj4+Pj4+Pj4+PiAxLiBXZSB1c2UgY3Jh
c2hrZXJuZWw9WCB0byByZXNlcnZlIGNyYXNoa2VybmVsIGJlbG93IDRHLAo+Pj4+Pj4+Pj4+Pj4g
d2hpY2ggd2lsbCBmYWlsCj4+Pj4+Pj4+Pj4+PiB3aGVuIHRoZXJlIGlzIG5vIGVub3VnaCBsb3cg
bWVtb3J5Lgo+Pj4+Pj4+Pj4+Pj4gMi4gQ3VycmVudGx5LCBjcmFzaGtlcm5lbD1ZQFggY2FuIGJl
IHVzZWQgdG8gcmVzZXJ2ZQo+Pj4+Pj4+Pj4+Pj4gY3Jhc2hrZXJuZWwgYWJvdmUgNEcsCj4+Pj4+
Pj4+Pj4+PiBpbiB0aGlzIGNhc2UsIGlmIHN3aW90bGIgb3IgRE1BIGJ1ZmZlcnMgYXJlIHJlcXVp
cmVkLAo+Pj4+Pj4+Pj4+Pj4gY3Jhc2ggZHVtcCBrZXJuZWwKPj4+Pj4+Pj4+Pj4+IHdpbGwgYm9v
dCBmYWlsdXJlIGJlY2F1c2UgdGhlcmUgaXMgbm8gbG93IG1lbW9yeSBhdmFpbGFibGUKPj4+Pj4+
Pj4+Pj4+IGZvciBhbGxvY2F0aW9uLgo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gV2UgYXJlIGdl
dHRpbmcgIndhcm5fYWxsb2MiIFsxXSB3YXJuaW5nIGR1cmluZyBib290IG9mIGtkdW1wCj4+Pj4+
Pj4+Pj4+IGtlcm5lbAo+Pj4+Pj4+Pj4+PiB3aXRoIGJvb3RhcmdzIGFzIFsyXSBvZiBwcmltYXJ5
IGtlcm5lbC4KPj4+Pj4+Pj4+Pj4gVGhpcyBlcnJvciBvYnNlcnZlZCBvbiBUaHVuZGVyWDIgIEFS
TTY0IHBsYXRmb3JtLgo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBJdCBpcyBvYnNlcnZlZCB3aXRo
IGxhdGVzdCB1cHN0cmVhbSB0YWcgKHY1LjctcmMzKSB3aXRoIHRoaXMKPj4+Pj4+Pj4+Pj4gcGF0
Y2ggc2V0Cj4+Pj4+Pj4+Pj4+IGFuZAo+Pj4+Pj4+Pj4+Pgo+IGh0dHBzOi8vdXJsZGVmZW5zZS5j
b20vdjMvX19odHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2tleGVjLzIwMjAt
TWF5LzAyNTEyOC5odG1sX187ISFHcWl2UFZhN0JyaW8hTG5UU0FSa0N0MFYwRm96UjBLbXFvb2FI
NUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4YmlJQUFsenUkCj4+Pj4+Pj4+Pj4+
IEFsc28gKip3aXRob3V0KiogdGhpcyBwYXRjaC1zZXQKPj4+Pj4+Pj4+Pj4gIgo+Pj4+Pj4+Pj4+
Pgo+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3d3dy5zcGluaWNzLm5ldC9s
aXN0cy9hcm0ta2VybmVsL21zZzgwNjg4Mi5odG1sX187ISFHcWl2UFZhN0JyaW8hTG5UU0FSa0N0
MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4YmpDNnVq
TUEkCj4+Pj4+Pj4+Pj4+ICIKPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gVGhpcyBpc3N1ZSBjb21l
cyB3aGVuZXZlciBjcmFzaGtlcm5lbCBtZW1vcnkgaXMgcmVzZXJ2ZWQKPj4+Pj4+Pj4+Pj4gYWZ0
ZXIgMHhjMDAwXzAwMDAuCj4+Pj4+Pj4+Pj4+IE1vcmUgZGV0YWlscyBkaXNjdXNzZWQgZWFybGll
ciBpbgo+Pj4+Pj4+Pj4+Pgo+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3d3
dy5zcGluaWNzLm5ldC9saXN0cy9hcm0ta2VybmVsL21zZzgwNjg4Mi5odG1sX187ISFHcWl2UFZh
N0JyaW8hTG5UU0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZt
Q2tJUEloc2F4YmpDNnVqTUEkCj4gICAgd2l0aG91dAo+Pj4+Pj4+Pj4+PiBhbnkKPj4+Pj4+Pj4+
Pj4gc29sdXRpb24KPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gVGhpcyBwYXRjaC1zZXQgaXMgZXhw
ZWN0ZWQgdG8gc29sdmUgc2ltaWxhciBraW5kIG9mIGlzc3VlLgo+Pj4+Pj4+Pj4+PiBpLmUuIGxv
dyBtZW1vcnkgaXMgb25seSB0YXJnZXRlZCBmb3IgRE1BLCBzd2lvdGxiOyBTbyBhYm92ZQo+Pj4+
Pj4+Pj4+PiBtZW50aW9uZWQKPj4+Pj4+Pj4+Pj4gb2JzZXJ2YXRpb24gc2hvdWxkIGJlIGNvbnNp
ZGVyZWQvZml4ZWQuIC4KPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gLS1wawo+Pj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+PiBbMV0KPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM2NjY5NV0gRE1JOiBDYXZpdW0gSW5j
LiBTYWJlci9TYWJlciwgQklPUwo+Pj4+Pj4+Pj4+PiBUWDItRlctUmVsZWFzZS0zLjEtYnVpbGRf
MDEtMjgwMy1nNzQyNTNhNTQxYSBtbS9kZC95eXl5Cj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNjc2OTZd
IE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMTYKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM2
OTk3M10gc3dhcHBlci8wOiBwYWdlIGFsbG9jYXRpb24gZmFpbHVyZTogb3JkZXI6NiwKPj4+Pj4+
Pj4+Pj4gbW9kZToweDEoR0ZQX0RNQSksIG5vZGVtYXNrPShudWxsKSxjcHVzZXQ9LyxtZW1zX2Fs
bG93ZWQ9MAo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzY5OTgwXSBDUFU6IDAgUElEOiAxIENvbW06IHN3
YXBwZXIvMCBOb3QgdGFpbnRlZAo+Pj4+Pj4+Pj4+PiA1LjcuMC1yYzMrICMxMjEKPj4+Pj4+Pj4+
Pj4gWyAgIDMwLjM2OTk4MV0gSGFyZHdhcmUgbmFtZTogQ2F2aXVtIEluYy4gU2FiZXIvU2FiZXIs
IEJJT1MKPj4+Pj4+Pj4+Pj4gVFgyLUZXLVJlbGVhc2UtMy4xLWJ1aWxkXzAxLTI4MDMtZzc0MjUz
YTU0MWEgbW0vZGQveXl5eQo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzY5OTg0XSBDYWxsIHRyYWNlOgo+
Pj4+Pj4+Pj4+PiBbICAgMzAuMzY5OTg5XSAgZHVtcF9iYWNrdHJhY2UrMHgwLzB4MWY4Cj4+Pj4+
Pj4+Pj4+IFsgICAzMC4zNjk5OTFdICBzaG93X3N0YWNrKzB4MjAvMHgzMAo+Pj4+Pj4+Pj4+PiBb
ICAgMzAuMzY5OTk3XSAgZHVtcF9zdGFjaysweGMwLzB4MTBjCj4+Pj4+Pj4+Pj4+IFsgICAzMC4z
NzAwMDFdICB3YXJuX2FsbG9jKzB4MTBjLzB4MTc4Cj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwMDRd
ICBfX2FsbG9jX3BhZ2VzX3Nsb3dwYXRoLmNvbnN0cHJvcC4xMTErMHhiMTAvMAo+Pj4+Pj4+Pj4+
PiB4YjUwCj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwMDZdICBfX2FsbG9jX3BhZ2VzX25vZGVtYXNr
KzB4MmI0LzB4MzAwCj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwMDhdICBhbGxvY19wYWdlX2ludGVy
bGVhdmUrMHgyNC8weDk4Cj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwMTFdICBhbGxvY19wYWdlc19j
dXJyZW50KzB4ZTQvMHgxMDgKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDAxN10gIGRtYV9hdG9taWNf
cG9vbF9pbml0KzB4NDQvMHgxYTQKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDAyMF0gIGRvX29uZV9p
bml0Y2FsbCsweDU0LzB4MjI4Cj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwMjddICBrZXJuZWxfaW5p
dF9mcmVlYWJsZSsweDIyOC8weDJjYwo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDMxXSAga2VybmVs
X2luaXQrMHgxYy8weDExMAo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDM0XSAgcmV0X2Zyb21fZm9y
aysweDEwLzB4MTgKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDAzNl0gTWVtLUluZm86Cj4+Pj4+Pj4+
Pj4+IFsgICAzMC4zNzAwNjRdIGFjdGl2ZV9hbm9uOjAgaW5hY3RpdmVfYW5vbjowIGlzb2xhdGVk
X2Fub246MAo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDY0XSAgYWN0aXZlX2ZpbGU6MCBpbmFjdGl2
ZV9maWxlOjAKPj4+Pj4+Pj4+Pj4gaXNvbGF0ZWRfZmlsZTowCj4+Pj4+Pj4+Pj4+IFsgICAzMC4z
NzAwNjRdICB1bmV2aWN0YWJsZTowIGRpcnR5OjAgd3JpdGViYWNrOjAgdW5zdGFibGU6MAo+Pj4+
Pj4+Pj4+PiBbICAgMzAuMzcwMDY0XSAgc2xhYl9yZWNsYWltYWJsZTozNCBzbGFiX3VucmVjbGFp
bWFibGU6NDQzOAo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDY0XSAgbWFwcGVkOjAgc2htZW06MCBw
YWdldGFibGVzOjE0IGJvdW5jZTowCj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwNjRdICBmcmVlOjE1
Mzc3MTkgZnJlZV9wY3A6MjE5IGZyZWVfY21hOjAKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDA3MF0g
Tm9kZSAwIGFjdGl2ZV9hbm9uOjBrQiBpbmFjdGl2ZV9hbm9uOjBrQgo+Pj4+Pj4+Pj4+PiBhY3Rp
dmVfZmlsZTowa0IgaW5hY3RpdmVfZmlsZTowa0IgdW5ldmljdGFibGU6MGtCCj4+Pj4+Pj4+Pj4+
IGlzb2xhdGVkKGFub24pOjBrQgo+Pj4+Pj4+Pj4+PiBpc29sYXRlZChmaWxlKTowa0IgbWFwcGVk
OjBrQiBkaXJ0eTowa0Igd3JpdGViYWNrOjBrQgo+Pj4+Pj4+Pj4+PiBzaG1lbTowa0IKPj4+Pj4+
Pj4+Pj4gc2htZW1fdGhwOiAwa0Igc2htZW1fcG1kbWFwcGVkOiAwa0IgYW5vbl90aHA6IDBrQgo+
Pj4+Pj4+Pj4+PiB3cml0ZWJhY2tfdG1wOjBrQgo+Pj4+Pj4+Pj4+PiB1bnN0YWJsZTowa0IgYWxs
X3VucmVjbGFpbWFibGU/IG5vCj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwNzNdIE5vZGUgMSBhY3Rp
dmVfYW5vbjowa0IgaW5hY3RpdmVfYW5vbjowa0IKPj4+Pj4+Pj4+Pj4gYWN0aXZlX2ZpbGU6MGtC
IGluYWN0aXZlX2ZpbGU6MGtCIHVuZXZpY3RhYmxlOjBrQgo+Pj4+Pj4+Pj4+PiBpc29sYXRlZChh
bm9uKTowa0IKPj4+Pj4+Pj4+Pj4gaXNvbGF0ZWQoZmlsZSk6MGtCIG1hcHBlZDowa0IgZGlydHk6
MGtCIHdyaXRlYmFjazowa0IKPj4+Pj4+Pj4+Pj4gc2htZW06MGtCCj4+Pj4+Pj4+Pj4+IHNobWVt
X3RocDogMGtCIHNobWVtX3BtZG1hcHBlZDogMGtCIGFub25fdGhwOiAwa0IKPj4+Pj4+Pj4+Pj4g
d3JpdGViYWNrX3RtcDowa0IKPj4+Pj4+Pj4+Pj4gdW5zdGFibGU6MGtCIGFsbF91bnJlY2xhaW1h
YmxlPyBubwo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDc5XSBOb2RlIDAgRE1BIGZyZWU6MGtCIG1p
bjowa0IgbG93OjBrQiBoaWdoOjBrQgo+Pj4+Pj4+Pj4+PiByZXNlcnZlZF9oaWdoYXRvbWljOjBL
QiBhY3RpdmVfYW5vbjowa0IgaW5hY3RpdmVfYW5vbjowa0IKPj4+Pj4+Pj4+Pj4gYWN0aXZlX2Zp
bGU6MGtCIGluYWN0aXZlX2ZpbGU6MGtCIHVuZXZpY3RhYmxlOjBrQgo+Pj4+Pj4+Pj4+PiB3cml0
ZXBlbmRpbmc6MGtCCj4+Pj4+Pj4+Pj4+IHByZXNlbnQ6MTI4a0IgbWFuYWdlZDowa0IgbWxvY2tl
ZDowa0Iga2VybmVsX3N0YWNrOjBrQgo+Pj4+Pj4+Pj4+PiBwYWdldGFibGVzOjBrQgo+Pj4+Pj4+
Pj4+PiBib3VuY2U6MGtCIGZyZWVfcGNwOjBrQiBsb2NhbF9wY3A6MGtCIGZyZWVfY21hOjBrQgo+
Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDg0XSBsb3dtZW1fcmVzZXJ2ZVtdOiAwIDI1MCA2MDYzIDYw
NjMKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDA5MF0gTm9kZSAwIERNQTMyIGZyZWU6MjU2MDAwa0Ig
bWluOjQwOGtCCj4+Pj4+Pj4+Pj4+IGxvdzo2NjRrQgo+Pj4+Pj4+Pj4+PiBoaWdoOjkyMGtCIHJl
c2VydmVkX2hpZ2hhdG9taWM6MEtCIGFjdGl2ZV9hbm9uOjBrQgo+Pj4+Pj4+Pj4+PiBpbmFjdGl2
ZV9hbm9uOjBrQgo+Pj4+Pj4+Pj4+PiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmlsZTowa0Ig
dW5ldmljdGFibGU6MGtCCj4+Pj4+Pj4+Pj4+IHdyaXRlcGVuZGluZzowa0IKPj4+Pj4+Pj4+Pj4g
cHJlc2VudDoyNjk3MDBrQiBtYW5hZ2VkOjI1NjAwMGtCIG1sb2NrZWQ6MGtCCj4+Pj4+Pj4+Pj4+
IGtlcm5lbF9zdGFjazowa0IKPj4+Pj4+Pj4+Pj4gcGFnZXRhYmxlczowa0IgYm91bmNlOjBrQiBm
cmVlX3BjcDowa0IgbG9jYWxfcGNwOjBrQgo+Pj4+Pj4+Pj4+PiBmcmVlX2NtYTowa0IKPj4+Pj4+
Pj4+Pj4gWyAgIDMwLjM3MDA5NF0gbG93bWVtX3Jlc2VydmVbXTogMCAwIDU4MTMgNTgxMwo+Pj4+
Pj4+Pj4+PiBbICAgMzAuMzcwMTAwXSBOb2RlIDAgTm9ybWFsIGZyZWU6NTg5NDg3NmtCIG1pbjo5
NTUya0IKPj4+Pj4+Pj4+Pj4gbG93OjE1NTA0a0IKPj4+Pj4+Pj4+Pj4gaGlnaDoyMTQ1NmtCIHJl
c2VydmVkX2hpZ2hhdG9taWM6MEtCIGFjdGl2ZV9hbm9uOjBrQgo+Pj4+Pj4+Pj4+PiBpbmFjdGl2
ZV9hbm9uOjBrQgo+Pj4+Pj4+Pj4+PiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmlsZTowa0Ig
dW5ldmljdGFibGU6MGtCCj4+Pj4+Pj4+Pj4+IHdyaXRlcGVuZGluZzowa0IKPj4+Pj4+Pj4+Pj4g
cHJlc2VudDo4Mzg4NjA4a0IgbWFuYWdlZDo1OTUzMTEya0IgbWxvY2tlZDowa0IKPj4+Pj4+Pj4+
Pj4ga2VybmVsX3N0YWNrOjIxNjcya0IKPj4+Pj4+Pj4+Pj4gcGFnZXRhYmxlczo1NmtCIGJvdW5j
ZTowa0IgZnJlZV9wY3A6ODc2a0IgbG9jYWxfcGNwOjE3NmtCCj4+Pj4+Pj4+Pj4+IGZyZWVfY21h
OjBrQgo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMTA0XSBsb3dtZW1fcmVzZXJ2ZVtdOiAwIDAgMCAw
Cj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAxMDddIE5vZGUgMCBETUE6IDAqNGtCIDAqOGtCIDAqMTZr
QiAwKjMya0IgMCo2NGtCCj4+Pj4+Pj4+Pj4+IDAqMTI4a0IKPj4+Pj4+Pj4+Pj4gMCoyNTZrQiAw
KjUxMmtCIDAqMTAyNGtCIDAqMjA0OGtCIDAqNDA5NmtCID0gMGtCCj4+Pj4+Pj4+Pj4+IFsgICAz
MC4zNzAxMTNdIE5vZGUgMCBETUEzMjogMCo0a0IgMCo4a0IgMCoxNmtCIDAqMzJrQgo+Pj4+Pj4+
Pj4+PiAwKjY0a0IgMCoxMjhrQgo+Pj4+Pj4+Pj4+PiAwKjI1NmtCIDAqNTEya0IgMCoxMDI0a0Ig
MSoyMDQ4a0IgKE0pIDYyKjQwOTZrQiAoTSkgPQo+Pj4+Pj4+Pj4+PiAyNTYwMDBrQgo+Pj4+Pj4+
Pj4+PiBbICAgMzAuMzcwMTE5XSBOb2RlIDAgTm9ybWFsOiAyKjRrQiAoTSkgMyo4a0IgKE1FKSAy
KjE2a0IKPj4+Pj4+Pj4+Pj4gKFVFKSAzKjMya0IKPj4+Pj4+Pj4+Pj4gKFVNKSAxKjY0a0IgKFUp
IDIqMTI4a0IgKE0pIDIqMjU2a0IgKE1FKSAzKjUxMmtCIChNRSkKPj4+Pj4+Pj4+Pj4gMyoxMDI0
a0IgKE1FKQo+Pj4+Pj4+Pj4+PiAzKjIwNDhrQiAoVU1FKSAxNDM2KjQwOTZrQiAoTSkgPSA1ODkz
NjAwa0IKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDEyOV0gTm9kZSAwIGh1Z2VwYWdlc190b3RhbD0w
IGh1Z2VwYWdlc19mcmVlPTAKPj4+Pj4+Pj4+Pj4gaHVnZXBhZ2VzX3N1cnA9MCBodWdlcGFnZXNf
c2l6ZT0xMDQ4NTc2a0IKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDEzMF0gMCB0b3RhbCBwYWdlY2Fj
aGUgcGFnZXMKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDEzMl0gMCBwYWdlcyBpbiBzd2FwIGNhY2hl
Cj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAxMzRdIFN3YXAgY2FjaGUgc3RhdHM6IGFkZCAwLCBkZWxl
dGUgMCwgZmluZCAwLzAKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDEzNV0gRnJlZSBzd2FwICA9IDBr
Qgo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMTM2XSBUb3RhbCBzd2FwID0gMGtCCj4+Pj4+Pj4+Pj4+
IFsgICAzMC4zNzAxMzddIDIxNjQ2MDkgcGFnZXMgUkFNCj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAx
MzldIDAgcGFnZXMgSGlnaE1lbS9Nb3ZhYmxlT25seQo+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMTQw
XSA2MTIzMzEgcGFnZXMgcmVzZXJ2ZWQKPj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDE0MV0gMCBwYWdl
cyBod3BvaXNvbmVkCj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAxNDNdIERNQTogZmFpbGVkIHRvIGFs
bG9jYXRlIDI1NiBLaUIgcG9vbCBmb3IKPj4+Pj4+Pj4+Pj4gYXRvbWljCj4+Pj4+Pj4+Pj4+IGNv
aGVyZW50IGFsbG9jYXRpb24KPj4+Pj4+Pj4+PiBEdXJpbmcgbXkgdGVzdGluZyBJIHNhdyB0aGUg
c2FtZSBlcnJvciBhbmQgQ2hlbidzICBzb2x1dGlvbgo+Pj4+Pj4+Pj4+IGNvcnJlY3RlZCBpdCAu
Cj4+Pj4+Pj4+PiBXaGljaCBjb21iaW5hdGlvbiB5b3UgYXJlIHVzaW5nIG9uIHlvdXIgc2lkZT8g
SSBhbSB1c2luZwo+Pj4+Pj4+Pj4gUHJhYmhha2FyJ3MKPj4+Pj4+Pj4+IHN1Z2dlc3RlZCBlbnZp
cm9ubWVudCBhbmQgY2FuIHJlcHJvZHVjZSB0aGUgaXNzdWUKPj4+Pj4+Pj4+IHdpdGggb3Igd2l0
aG91dCBDaGVuJ3MgY3Jhc2hrZXJuZWwgc3VwcG9ydCBhYm92ZSA0RyBwYXRjaHNldC4KPj4+Pj4+
Pj4+Cj4+Pj4+Pj4+PiBJIGFtIGFsc28gdXNpbmcgYSBUaHVuZGVyWDIgcGxhdGZvcm0gd2l0aCBs
YXRlc3QgbWFrZWR1bXBmaWxlCj4+Pj4+Pj4+PiBjb2RlIGFuZAo+Pj4+Pj4+Pj4ga2V4ZWMtdG9v
bHMgKHdpdGggdGhlIHN1Z2dlc3RlZCBwYXRjaAo+Pj4+Pj4+Pj4gPAo+Pj4+Pj4+Pj4KPiBodHRw
czovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVy
bWFpbC9rZXhlYy8yMDIwLU1heS8wMjUxMjguaHRtbF9fOyEhR3FpdlBWYTdCcmlvIUo2bFVpZzU4
LUd3NlRLWm5FRVl6RWVTVTM2VC0xU3FsQjFrSW1VMDB4dFhfbHNzNVR4LUpiVW1MRTlUSkMzZm9Y
QkxnJAo+Pj4+Pj4+Pj4+ICkuCj4+Pj4+Pj4+PiBUaGFua3MsCj4+Pj4+Pj4+PiBCaHVwZXNoCj4+
Pj4+Pj4+IEkgZGlkIHRoaXMgYWN0aXZpdHkgNSBtb250aHMgYWdvIGFuZCBJIGhhdmUgbW92ZWQg
b24gdG8gb3RoZXIKPj4+Pj4+Pj4gYWN0aXZpdGllcy4gTXkgRE1BIGZhaWx1cmVzIHdlcmUgcmVs
YXRlZCB0byBQQ0kgZGV2aWNlcyB0aGF0IGNvdWxkCj4+Pj4+Pj4+IG5vdCBiZSBlbnVtZXJhdGVk
IGJlY2F1c2UgIGxvdy1ETUEgc3BhY2Ugd2FzIG5vdCAgYXZhaWxhYmxlIHdoZW4KPj4+Pj4+Pj4g
Y3Jhc2hrZXJuZWwgd2FzIG1vdmVkIGFib3ZlIDRHOyBJIGRvbuKAmXQgcmVjYWxsIHRoZSBleGFj
dCBwbGF0Zm9ybS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gRm9yIHRoaXMg
ZmFpbHVyZSAsCj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IERNQTogZmFpbGVkIHRvIGFsbG9jYXRlIDI1
NiBLaUIgcG9vbCBmb3IgYXRvbWljCj4+Pj4+Pj4+Pj4+IGNvaGVyZW50IGFsbG9jYXRpb24KPj4+
Pj4+Pj4gSXMgZHVlIHRvIDoKPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gMzYxODA4MmMKPj4+
Pj4+Pj4gKCJhcm02NCB1c2UgYm90aCBaT05FX0RNQSBhbmQgWk9ORV9ETUEzMiIpCj4+Pj4+Pj4+
Cj4+Pj4+Pj4+IFdpdGggdGhlIGludHJvZHVjdGlvbiBvZiBaT05FX0RNQSB0byBzdXBwb3J0IHRo
ZSBSYXNwYmVycnkgRE1BCj4+Pj4+Pj4+IHJlZ2lvbiBiZWxvdyAxRywgdGhlIGNyYXNoa2VybmVs
IGlzIHBsYWNlZCBpbiB0aGUgdXBwZXIgNEcKPj4+Pj4+Pj4gWk9ORV9ETUFfMzIgcmVnaW9uLiBT
aW5jZSB0aGUgY3Jhc2hrZXJuZWwgZG9lcyBub3QgaGF2ZSBhY2Nlc3MKPj4+Pj4+Pj4gdG8gdGhl
IFpPTkVfRE1BIHJlZ2lvbiwgaXQgcHJpbnRzIG91dCBjYWxsIHRyYWNlIGR1cmluZyBib290dXAu
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEl0IGlzIGR1ZSB0byBoYXZpbmcgdGhpcyBDT05GSUcgaXRlbSAg
T04gIDoKPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gQ09ORklHX1pPTkVfRE1BPXkKPj4+Pj4+
Pj4KPj4+Pj4+Pj4gVHVybmluZyBvZmYgWk9ORV9ETUEgZml4ZXMgYSBpc3N1ZSBhbmQgUmFzcGJl
cnJ5IFBJIDQgd2lsbAo+Pj4+Pj4+PiB1c2UgdGhlIGRldmljZSB0cmVlIHRvIHNwZWNpZnkgbWVt
b3J5IGJlbG93IDFHLgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+IERpc2FibGluZyBaT05FX0RN
QSBpcyB0ZW1wb3Jhcnkgc29sdXRpb24uICBXZSBtYXkgbmVlZCBwcm9wZXIKPj4+Pj4+PiBzb2x1
dGlvbgo+Pj4+Pj4gUGVyaGFwcyB0aGUgUmFzcGJlcnJ5IHBsYXRmb3JtIGNvbmZpZ3VyYXRpb24g
ZGVwZW5kZW5jaWVzIG5lZWQKPj4+Pj4+IHNlcGFyYXRlZCAgZnJvbSDigJxzZXJ2ZXIgY2xhc3Pi
gJ0gQXJtICBlcXVpcG1lbnQgPyAgT3IgYXV0by1jb25maWd1cmVkIG9uCj4+Pj4+PiBib290ID8g
IENvbnN1bHQgYW4gZXhwZXJ0IDstKQo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4+PiBJIHdv
dWxkIGxpa2UgdG8gc2VlIENoZW7igJlzIGZlYXR1cmUgYWRkZWQgLCBwZXJoYXBzIGFzCj4+Pj4+
Pj4+IEVYUEVSSU1FTlRBTCwgIHNvIHdlIGNhbiBnZXQgc29tZSBjb25maWd1cmF0aW9uIHRlc3Rp
bmcgZG9uZSBvbgo+Pj4+Pj4+PiBpdC4gICBJdCBjb3JyZWN0cyBoYXZpbmcgYSBETUEgem9uZSBp
biBsb3cgbWVtb3J5IHdoaWxlIGNyYXNoLQo+Pj4+Pj4+PiBrZXJuZWwgaXMgYWJvdmUgNEdCLiAg
VGhpcyBoYXMgYmVlbiBnb2luZyBvbiBmb3IgYSB5ZWFyIG5vdy4KPj4+Pj4+PiBJIHdpbGwgYWxz
byBsaWtlIHRoaXMgcGF0Y2ggdG8gYmUgYWRkZWQgaW4gTGludXggYXMgZWFybHkgYXMKPj4+Pj4+
PiBwb3NzaWJsZS4KPj4+Pj4+Pgo+Pj4+Pj4+IElzc3VlIG1lbnRpb25lZCBieSBtZSBoYXBwZW5z
IHdpdGggb3Igd2l0aG91dCB0aGlzIHBhdGNoLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBwYXRjaC1z
ZXQgY2FuIGNvbnNpZGVyIGZpeGluZyBiZWNhdXNlIGl0IHVzZXMgbG93IG1lbW9yeSBmb3IKPj4+
Pj4+PiBETUEKPj4+Pj4+PiAmIHN3aW90bGIgb25seS4KPj4+Pj4+PiBXZSBjYW4gY29uc2lkZXIg
cmVzdHJpY3RpbmcgY3Jhc2hrZXJuZWwgd2l0aGluIHRoZSByZXF1aXJlZCByYW5nZQo+Pj4+Pj4+
IGxpa2UgYmVsb3cKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9rZXJuZWwvY3Jhc2hfY29y
ZS5jIGIva2VybmVsL2NyYXNoX2NvcmUuYwo+Pj4+Pj4+IGluZGV4IDdmOWU1YTZkYzQ4Yy4uYmQ2
N2I5MGQzNWJkIDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2tlcm5lbC9jcmFzaF9jb3JlLmMKPj4+Pj4+
PiArKysgYi9rZXJuZWwvY3Jhc2hfY29yZS5jCj4+Pj4+Pj4gQEAgLTM1NCw3ICszNTQsNyBAQCBp
bnQgX19pbml0IHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KHZvaWQpCj4+Pj4+Pj4gICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gMDsKPj4+Pj4+PiAgICAgICAgfQo+Pj4+Pj4+Cj4+Pj4+Pj4g
LSAgICAgICBsb3dfYmFzZSA9IG1lbWJsb2NrX2ZpbmRfaW5fcmFuZ2UoMCwgMVVMTCA8PCAzMiwg
bG93X3NpemUsCj4+Pj4+Pj4gQ1JBU0hfQUxJR04pOwo+Pj4+Pj4+ICsgICAgICAgbG93X2Jhc2Ug
PSBtZW1ibG9ja19maW5kX2luX3JhbmdlKDAsMHhjMDAwMDAwMCwgbG93X3NpemUsCj4+Pj4+Pj4g
Q1JBU0hfQUxJR04pOwo+Pj4+Pj4+ICAgICAgICBpZiAoIWxvd19iYXNlKSB7Cj4+Pj4+Pj4gICAg
ICAgICAgICAgICAgcHJfZXJyKCJDYW5ub3QgcmVzZXJ2ZSAlbGRNQiBjcmFzaGtlcm5lbCBsb3cg
bWVtb3J5LAo+Pj4+Pj4+IHBsZWFzZSB0cnkgc21hbGxlciBzaXplLlxuIiwKPj4+Pj4+PiAgICAg
ICAgICAgICAgICAgICAgICAgKHVuc2lnbmVkIGxvbmcpKGxvd19zaXplID4+IDIwKSk7Cj4+Pj4+
Pj4KPj4+Pj4+Pgo+Pj4+Pj4gICAgIEkgc3VzcGVjdCAgMHhjMDAwMDAwMCAgd291bGQgbmVlZCB0
byBiZSBhIENPTkZJRyBpdGVtICBhbmQgbm90Cj4+Pj4+PiBoYXJkLWNvZGVkLgo+Pj4+Pj4KPj4+
Pj4gaWYgeW91IGNvbnNpZGVyIHRoaXMgYXMgdmFsaWQgY2hhbmdlLCAgY2FuIHlvdSBwbGVhc2Ug
aW5jb3Jwb3JhdGUgYXMKPj4+Pj4gcGFydCBvZiB5b3VyIHBhdGNoLXNldC4KPj4+PiBBZnRlciBj
b21taXQgMWE4ZTFjZWY3ICgiYXJtNjQ6IHVzZSBib3RoIFpPTkVfRE1BIGFuZCBaT05FX0RNQTMy
IinvvIx0aGUgMC0KPj4+PiA0RyBtZW1vcnkgaXMgc3BsaXRlZAo+Pj4+IHRvIERNQSBbbWVtIDB4
MDAwMDAwMDAwMDAwMDAwMC0weDAwMDAwMDAwM2ZmZmZmZmZdIGFuZCBETUEzMiBbbWVtCj4+Pj4g
MHgwMDAwMDAwMDQwMDAwMDAwLTB4MDAwMDAwMDBmZmZmZmZmZl0gb24gYXJtNjQuCj4+Pj4KPj4+
PiAgRnJvbSB0aGUgYWJvdmUgZGlzY3Vzc2lvbiwgb24geW91ciBwbGF0Zm9ybSwgdGhlIGxvdyBj
cmFzaGtlcm5lbCBmYWxsIGluCj4+Pj4gRE1BMzIgcmVnaW9uLCBidXQgeW91ciBlbnZpcm9ubWVu
dCBuZWVkcyB0byBhY2Nlc3MgRE1BCj4+Pj4gcmVnaW9uLCBzbyB0aGVyZSBpcyB0aGUgY2FsbCB0
cmFjZS4KPj4+Pgo+Pj4+IEkgaGF2ZSBhIHF1ZXN0aW9uLCB3aHkgZG8geW91IGNob29zZSAweGMw
MDAwMDAwIGhlcmU/Cj4+Pj4KPj4+PiBCZXNpZGVzLCB0aGlzIGlzIGNvbW1vbiBjb2RlLCB3ZSBh
bHNvIG5lZWQgdG8gY29uc2lkZXIgYWJvdXQgeDg2Lgo+Pj4+Cj4+PiAgICsgbnNhZW56anVsaWVu
bmVAc3VzZS5kZQo+IFRoYW5rcyBmb3IgYWRkaW5nIG1lIHRvIHRoZSBjb252ZXJzYXRpb24sIGFu
ZCBzb3JyeSBmb3IgdGhlIGhlYWRhY2hlcy4KPgo+Pj4gICAgRXhhY3RseSAuICBUaGlzIGlzIHdo
eSBpdCBuZWVkcyB0byBiZSBhIENPTkZJRyBvcHRpb24gZm9yICBSYXNwYmVycnkKPj4+IC4uLCAg
b3IgZGV2aWNlIHRyZWUgb3B0aW9uLgo+Pj4KPj4+Cj4+PiAgICBXZSBjb3VsZCByZXZlcnQgMWE4
ZTFjZWY3IHNpbmNlIGl0IGJyb2tlICBBcm0ga2R1bXAgdG9vLgo+PiBXZWxsLCB1bmZvcnR1bmF0
ZWx5IHRoZSBwYXRjaCBmb3IgY29tbWl0IDFhOGUxY2VmNzYwMyAoImFybTY0OiB1c2UKPj4gYm90
aCBaT05FX0RNQSBhbmQgWk9ORV9ETUEzMiIpIHdhcyBub3QgQ2MnZWQgdG8gdGhlIGtleGVjIG1h
aWxpbmcKPj4gbGlzdCwgdGh1cyB3ZSBjb3VsZG4ndCBnZXQgbWFueSBleWVzIG9uIGl0IGZvciBh
IHRob3JvdWdoIHJldmlldyBmcm9tCj4+IGtleGVjL2tkdW1wIHAtby12Lgo+Pgo+PiBBbHNvIHdl
IGhpc3RvcmljYWxseSBuZXZlciBoYWQgZGlzdGluY3Rpb24gaW4gY29tbW9uIGFyY2ggY29kZSBv
biB0aGUKPj4gYmFzaXMgb2YgdGhlIGludGVuZGVkIGVuZCB1c2UtY2FzZTogZW1iZWRkZWQsIHNl
cnZlciBvciBhdXRvbW90aXZlLCBzbwo+PiBJIGFtIG5vdCBzdXJlIGludHJvZHVjaW5nIGEgUmFz
cGJlcnJ5IHNwZWNpZmljIENPTkZJRyBvcHRpb24gd291bGQgYmUKPj4gYSBnb29kIGlkZWEuCj4g
KzEKPgo+ICBGcm9tIHRoZSBkaXN0cm9zIHBlcnNwZWN0aXZlIGl0J3MgdmVyeSBpbXBvcnRhbnQg
dG8ga2VlcCBhIHNpbmdsZSBrZXJuZWwgaW1hZ2UuCj4KPj4gU28sIHJhdGhlciB0aGFuIHJldmVy
dGluZyB0aGUgcGF0Y2gsIHdlIGNhbiBsb29rIGF0IGFkZHJlc3NpbmcgdGhlCj4+IHNhbWUgcHJv
cGVybHkgdGhpcyB0aW1lIC0gZXNwZWNpYWxseSBmcm9tIGEga2R1bXAgcC1vLXYuCj4+IFRoaXMg
aXNzdWUgaGFzIGJlZW4gcmVwb3J0ZWQgYnkgc29tZSBSZWQgSGF0IGFybTY0IHBhcnRuZXJzIHdp
dGgKPj4gdXBzdHJlYW0ga2VybmVsIGFsc28gYW5kIGFzIHdlIGhhdmUgbm90aWNlZCBpbiB0aGUg
cGFzdCBhcyB3ZWxsLAo+PiBoYXJkY29kaW5nIHRoZSBwbGFjZW1lbnQgb2YgdGhlIGNyYXNoa2Vy
bmVsIGJhc2UgYWRkcmVzcyAodW5sZXNzIHRoZQo+PiBiYXNlIGFkZHJlc3MgaXMgc3BlY2lmaWVk
IGJ5IGEgY3Jhc2hrZXJuZWw9WEBZIGxpa2UgYm9vdGFyZ3MpIGlzIGFsc28KPj4gbm90IGEgcG9y
dGFibGUgc3VnZ2VzdGlvbi4KPj4KPj4gSSBhbSB3b3JraW5nIG9uIGEgcG9zc2libGUgZml4IGFu
ZCB3aWxsIGhhdmUgbW9yZSB1cGRhdGVzIG9uIHRoZSBzYW1lCj4+IGluIGEgZGF5LW9yLXR3by4K
PiBQbGVhc2Uga2VlcCBtZSBpbiB0aGUgbG9vcCwgd2UndmUgYWxzbyBoYWQgaXNzdWVzIHBvaW50
aW5nIHRvIHRoaXMgcmVwb3J0ZWQgYnkKPiBTVVNFIHBhcnRuZXJzLiBJIGNhbiBkbyBzb21lIHRl
c3RpbmcgYm90aCBvbiB0aGUgUlBpNCBhbmQgb24gYmlnIHNlcnZlcnMgdGhhdAo+IG5lZWQgaHVn
ZSBjcmFzaGtlcm5lbCBzaXplcy4KPgo+IFJlZ2FyZHMsCj4gTmljb2xhcwo+CgogwqAgSGkKCiDC
oCBIYXMgdGhlcmUgYmVlbiBhbnkgcHJvZ3Jlc3Mgb24gdGhpcyA/IEl0IGFwcGVhcnMgd2UgYXJl
IHN0YWxsZWQgCmJlY2F1c2UgTmljb2xhcydzwqAgYW5kIENoZW4ncyBjaGFuZ2VzIGFyZSBub3Qg
Y29tcGF0aWJsZSAuIE9uZSBpcyBuZWVkZWQgCmZvciBSUGk0IGFuZCB0aGUgb3RoZXIgZm9yIHNl
cnZlciBjbGFzcyBlcXVpcG1lbnQuCgoKVGhhbmtzLAoKSm9obgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
