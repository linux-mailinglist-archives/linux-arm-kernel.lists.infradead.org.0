Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4DC201EE4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:02:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DHlPodfUX/n22wZOvin42+3hB4PM3EHr8CTWpIrTT9A=; b=e2cLRU4vkCe1WiD3ZcVEqB5CZ
	af1zxfHkzfZLliD+t91lJ50jtU8M7Pu6NNVVSDQrwZpbSpLmqP4WwhsareiDfkHEjSQXp9bXCGzxu
	GMytNLb6sUFylzG1+99MCXWKhE83XdRJ/NVqB9hyriptyx6KOro77hDB8ZEC8EmT+NaplJz2wWaW0
	tn2mDbVVC9bKhmDMRS+5/vW6Y4KGrTgUsggGm9SCsz+cCBZErOMC3DXBIIoEkN/C9a+MKd3MpitXs
	9PCEWlAM3qcORL1XVvF2wanb6GbNSJoN5WQYdJqI/DNJg3idxzv4hHcUISlHlCl0sny7dR9hsTy8a
	2X1DlaUJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmQxi-0006Jj-V8; Sat, 20 Jun 2020 00:02:23 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQxJ-00068K-3K; Sat, 20 Jun 2020 00:02:00 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05JNvgYL062871;
 Sat, 20 Jun 2020 00:01:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=2DAnOwpB2BmDxX4XHsC/A2sxBv/rzVENAOyCSmQwGj8=;
 b=yOv4cGvqw2Z9zrL71GvFatzu7UhvpImffezMQ2mLJ7y/rR3k2O/lnCuaYjnpLVviJ/Sp
 70K0CS//sUNLhd9baUs+f6Un5c7IJIywUBsd4TMmwmhMU5iS8BO0UGdVkr02VcV2C/bL
 Ztr9wlk5UFHg4uExAgVI7UdqYX/IsUGjLljopObluT2LufoMLKpNBi5dEWTPJOouyHu5
 yQcughsSalP6KwgpWPy6g86I40MqVNIXWpAQXihzWiR33N3DV8DqjntreztbooA3tqKo
 QGKvGZ4MZruQH6XUuauSEnQNeTnF2b5Fe0Aq7qMgXFtpik21/ygMJr0SBmTpBcEXypkf tA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 31qecm7pye-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 20 Jun 2020 00:01:27 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05JNxJBX045647;
 Sat, 20 Jun 2020 00:01:27 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 31q66s5naf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 20 Jun 2020 00:01:27 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05K01F77002911;
 Sat, 20 Jun 2020 00:01:15 GMT
Received: from [192.168.1.126] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jun 2020 17:01:15 -0700
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
To: chenzhou <chenzhou10@huawei.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
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
 <8ca6c3e9-b8ab-77c3-a1d3-beb513c22f1b@oracle.com>
 <03929ef5-7044-5610-c207-e497d3994f49@huawei.com>
From: John Donnelly <john.p.donnelly@oracle.com>
Message-ID: <437140b8-e0f8-97a4-307d-fe7c304b37be@oracle.com>
Date: Fri, 19 Jun 2020 19:01:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <03929ef5-7044-5610-c207-e497d3994f49@huawei.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9657
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 mlxscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006190169
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9657
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 cotscore=-2147483648 malwarescore=0
 clxscore=1015 adultscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006190169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_170157_301577_325C439E 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Baoquan He <bhe@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, RuiRui Yang <dyoung@redhat.com>,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
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

Ck9uIDYvMTkvMjAgMzoyMSBBTSwgY2hlbnpob3Ugd3JvdGU6Cj4gT24gMjAyMC82LzE5IDEwOjMy
LCBKb2huIERvbm5lbGx5IHdyb3RlOgo+PiBPbiA2LzQvMjAgMTI6MDEgUE0sIE5pY29sYXMgU2Fl
bnogSnVsaWVubmUgd3JvdGU6Cj4+PiBPbiBUaHUsIDIwMjAtMDYtMDQgYXQgMDE6MTcgKzA1MzAs
IEJodXBlc2ggU2hhcm1hIHdyb3RlOgo+Pj4+IEhpIEFsbCwKPj4+Pgo+Pj4+IE9uIFdlZCwgSnVu
IDMsIDIwMjAgYXQgOTowMyBQTSBKb2huIERvbm5lbGx5IDxqb2huLnAuZG9ubmVsbHlAb3JhY2xl
LmNvbT4KPj4+PiB3cm90ZToKPj4+Pj4+IE9uIEp1biAzLCAyMDIwLCBhdCA4OjIwIEFNLCBjaGVu
emhvdSA8Y2hlbnpob3UxMEBodWF3ZWkuY29tPiB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBIaSwKPj4+
Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gT24gMjAyMC82LzMgMTk6NDcsIFByYWJoYWthciBLdXNod2FoYSB3
cm90ZToKPj4+Pj4+PiBIaSBDaGVuLAo+Pj4+Pj4+Cj4+Pj4+Pj4gT24gVHVlLCBKdW4gMiwgMjAy
MCBhdCA4OjEyIFBNIEpvaG4gRG9ubmVsbHkgPGpvaG4ucC5kb25uZWxseUBvcmFjbGUuY29tCj4+
Pj4+Pj4+IHdyb3RlOgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT24gSnVuIDIsIDIwMjAsIGF0IDEyOjM4
IEFNLCBQcmFiaGFrYXIgS3VzaHdhaGEgPAo+Pj4+Pj4+Pj4gcHJhYmhha2FyLnBraW5AZ21haWwu
Y29tPiB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBPbiBUdWUsIEp1biAyLCAyMDIwIGF0IDM6
MjkgQU0gSm9obiBEb25uZWxseSA8Cj4+Pj4+Pj4+PiBqb2huLnAuZG9ubmVsbHlAb3JhY2xlLmNv
bT4gd3JvdGU6Cj4+Pj4+Pj4+Pj4gSGkgLiAgU2VlIGJlbG93ICEKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4+PiBPbiBKdW4gMSwgMjAyMCwgYXQgNDowMiBQTSwgQmh1cGVzaCBTaGFybWEgPGJoc2hhcm1h
QHJlZGhhdC5jb20+Cj4+Pj4+Pj4+Pj4+IHdyb3RlOgo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBI
aSBKb2huLAo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBPbiBUdWUsIEp1biAyLCAyMDIwIGF0IDE6
MDEgQU0gSm9obiBEb25uZWxseSA8Cj4+Pj4+Pj4+Pj4+IEpvaG4uUC5kb25uZWxseUBvcmFjbGUu
Y29tPiB3cm90ZToKPj4+Pj4+Pj4+Pj4+IEhpLAo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4+PiBPbiA2LzEvMjAgNzowMiBBTSwgUHJhYmhha2FyIEt1c2h3YWhhIHdyb3RlOgo+
Pj4+Pj4+Pj4+Pj4+IEhpIENoZW4sCj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+PiBPbiBUaHUs
IE1heSAyMSwgMjAyMCBhdCAzOjA1IFBNIENoZW4gWmhvdSA8Cj4+Pj4+Pj4+Pj4+Pj4gY2hlbnpo
b3UxMEBodWF3ZWkuY29tPiB3cm90ZToKPj4+Pj4+Pj4+Pj4+Pj4gVGhpcyBwYXRjaCBzZXJpZXMg
ZW5hYmxlIHJlc2VydmluZyBjcmFzaGtlcm5lbCBhYm92ZSA0RyBpbgo+Pj4+Pj4+Pj4+Pj4+PiBh
cm02NC4KPj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4gVGhlcmUgYXJlIGZvbGxvd2luZyBp
c3N1ZXMgaW4gYXJtNjQga2R1bXA6Cj4+Pj4+Pj4+Pj4+Pj4+IDEuIFdlIHVzZSBjcmFzaGtlcm5l
bD1YIHRvIHJlc2VydmUgY3Jhc2hrZXJuZWwgYmVsb3cgNEcsCj4+Pj4+Pj4+Pj4+Pj4+IHdoaWNo
IHdpbGwgZmFpbAo+Pj4+Pj4+Pj4+Pj4+PiB3aGVuIHRoZXJlIGlzIG5vIGVub3VnaCBsb3cgbWVt
b3J5Lgo+Pj4+Pj4+Pj4+Pj4+PiAyLiBDdXJyZW50bHksIGNyYXNoa2VybmVsPVlAWCBjYW4gYmUg
dXNlZCB0byByZXNlcnZlCj4+Pj4+Pj4+Pj4+Pj4+IGNyYXNoa2VybmVsIGFib3ZlIDRHLAo+Pj4+
Pj4+Pj4+Pj4+PiBpbiB0aGlzIGNhc2UsIGlmIHN3aW90bGIgb3IgRE1BIGJ1ZmZlcnMgYXJlIHJl
cXVpcmVkLAo+Pj4+Pj4+Pj4+Pj4+PiBjcmFzaCBkdW1wIGtlcm5lbAo+Pj4+Pj4+Pj4+Pj4+PiB3
aWxsIGJvb3QgZmFpbHVyZSBiZWNhdXNlIHRoZXJlIGlzIG5vIGxvdyBtZW1vcnkgYXZhaWxhYmxl
Cj4+Pj4+Pj4+Pj4+Pj4+IGZvciBhbGxvY2F0aW9uLgo+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
Pj4+IFdlIGFyZSBnZXR0aW5nICJ3YXJuX2FsbG9jIiBbMV0gd2FybmluZyBkdXJpbmcgYm9vdCBv
ZiBrZHVtcAo+Pj4+Pj4+Pj4+Pj4+IGtlcm5lbAo+Pj4+Pj4+Pj4+Pj4+IHdpdGggYm9vdGFyZ3Mg
YXMgWzJdIG9mIHByaW1hcnkga2VybmVsLgo+Pj4+Pj4+Pj4+Pj4+IFRoaXMgZXJyb3Igb2JzZXJ2
ZWQgb24gVGh1bmRlclgyICBBUk02NCBwbGF0Zm9ybS4KPj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
Pj4+IEl0IGlzIG9ic2VydmVkIHdpdGggbGF0ZXN0IHVwc3RyZWFtIHRhZyAodjUuNy1yYzMpIHdp
dGggdGhpcwo+Pj4+Pj4+Pj4+Pj4+IHBhdGNoIHNldAo+Pj4+Pj4+Pj4+Pj4+IGFuZAo+Pj4+Pj4+
Pj4+Pj4+Cj4+PiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL3BpcGVybWFpbC9rZXhlYy8yMDIwLU1heS8wMjUxMjguaHRtbF9fOyEhR3FpdlBW
YTdCcmlvIUxuVFNBUmtDdDBWMEZvelIwS21xb29hSDVBRHRkWHZzM21QZFAzS1JWcUFMbXZTSzJW
bUNrSVBJaHNheGJpSUFBbHp1JAo+Pj4+Pj4+Pj4+Pj4+IEFsc28gKip3aXRob3V0KiogdGhpcyBw
YXRjaC1zZXQKPj4+Pj4+Pj4+Pj4+PiAiCj4+Pj4+Pj4+Pj4+Pj4KPj4+IGh0dHBzOi8vdXJsZGVm
ZW5zZS5jb20vdjMvX19odHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9hcm0ta2VybmVsL21z
ZzgwNjg4Mi5odG1sX187ISFHcWl2UFZhN0JyaW8hTG5UU0FSa0N0MFYwRm96UjBLbXFvb2FINUFE
dGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4YmpDNnVqTUEkCj4+Pj4+Pj4+Pj4+Pj4g
Igo+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gVGhpcyBpc3N1ZSBjb21lcyB3aGVuZXZlciBj
cmFzaGtlcm5lbCBtZW1vcnkgaXMgcmVzZXJ2ZWQKPj4+Pj4+Pj4+Pj4+PiBhZnRlciAweGMwMDBf
MDAwMC4KPj4+Pj4+Pj4+Pj4+PiBNb3JlIGRldGFpbHMgZGlzY3Vzc2VkIGVhcmxpZXIgaW4KPj4+
Pj4+Pj4+Pj4+Pgo+Pj4gaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vd3d3LnNw
aW5pY3MubmV0L2xpc3RzL2FybS1rZXJuZWwvbXNnODA2ODgyLmh0bWxfXzshIUdxaXZQVmE3QnJp
byFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0syVm1Da0lQ
SWhzYXhiakM2dWpNQSQKPj4+ICAgICB3aXRob3V0Cj4+Pj4+Pj4+Pj4+Pj4gYW55Cj4+Pj4+Pj4+
Pj4+Pj4gc29sdXRpb24KPj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IFRoaXMgcGF0Y2gtc2V0
IGlzIGV4cGVjdGVkIHRvIHNvbHZlIHNpbWlsYXIga2luZCBvZiBpc3N1ZS4KPj4+Pj4+Pj4+Pj4+
PiBpLmUuIGxvdyBtZW1vcnkgaXMgb25seSB0YXJnZXRlZCBmb3IgRE1BLCBzd2lvdGxiOyBTbyBh
Ym92ZQo+Pj4+Pj4+Pj4+Pj4+IG1lbnRpb25lZAo+Pj4+Pj4+Pj4+Pj4+IG9ic2VydmF0aW9uIHNo
b3VsZCBiZSBjb25zaWRlcmVkL2ZpeGVkLiAuCj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+PiAt
LXBrCj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+PiBbMV0KPj4+Pj4+Pj4+Pj4+PiBbICAgMzAu
MzY2Njk1XSBETUk6IENhdml1bSBJbmMuIFNhYmVyL1NhYmVyLCBCSU9TCj4+Pj4+Pj4+Pj4+Pj4g
VFgyLUZXLVJlbGVhc2UtMy4xLWJ1aWxkXzAxLTI4MDMtZzc0MjUzYTU0MWEgbW0vZGQveXl5eQo+
Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNjc2OTZdIE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1p
bHkgMTYKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzY5OTczXSBzd2FwcGVyLzA6IHBhZ2UgYWxsb2Nh
dGlvbiBmYWlsdXJlOiBvcmRlcjo2LAo+Pj4+Pj4+Pj4+Pj4+IG1vZGU6MHgxKEdGUF9ETUEpLCBu
b2RlbWFzaz0obnVsbCksY3B1c2V0PS8sbWVtc19hbGxvd2VkPTAKPj4+Pj4+Pj4+Pj4+PiBbICAg
MzAuMzY5OTgwXSBDUFU6IDAgUElEOiAxIENvbW06IHN3YXBwZXIvMCBOb3QgdGFpbnRlZAo+Pj4+
Pj4+Pj4+Pj4+IDUuNy4wLXJjMysgIzEyMQo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNjk5ODFdIEhh
cmR3YXJlIG5hbWU6IENhdml1bSBJbmMuIFNhYmVyL1NhYmVyLCBCSU9TCj4+Pj4+Pj4+Pj4+Pj4g
VFgyLUZXLVJlbGVhc2UtMy4xLWJ1aWxkXzAxLTI4MDMtZzc0MjUzYTU0MWEgbW0vZGQveXl5eQo+
Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNjk5ODRdIENhbGwgdHJhY2U6Cj4+Pj4+Pj4+Pj4+Pj4gWyAg
IDMwLjM2OTk4OV0gIGR1bXBfYmFja3RyYWNlKzB4MC8weDFmOAo+Pj4+Pj4+Pj4+Pj4+IFsgICAz
MC4zNjk5OTFdICBzaG93X3N0YWNrKzB4MjAvMHgzMAo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNjk5
OTddICBkdW1wX3N0YWNrKzB4YzAvMHgxMGMKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDAxXSAg
d2Fybl9hbGxvYysweDEwYy8weDE3OAo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwMDRdICBfX2Fs
bG9jX3BhZ2VzX3Nsb3dwYXRoLmNvbnN0cHJvcC4xMTErMHhiMTAvMAo+Pj4+Pj4+Pj4+Pj4+IHhi
NTAKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDA2XSAgX19hbGxvY19wYWdlc19ub2RlbWFzaysw
eDJiNC8weDMwMAo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwMDhdICBhbGxvY19wYWdlX2ludGVy
bGVhdmUrMHgyNC8weDk4Cj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDAxMV0gIGFsbG9jX3BhZ2Vz
X2N1cnJlbnQrMHhlNC8weDEwOAo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwMTddICBkbWFfYXRv
bWljX3Bvb2xfaW5pdCsweDQ0LzB4MWE0Cj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDAyMF0gIGRv
X29uZV9pbml0Y2FsbCsweDU0LzB4MjI4Cj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDAyN10gIGtl
cm5lbF9pbml0X2ZyZWVhYmxlKzB4MjI4LzB4MmNjCj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDAz
MV0gIGtlcm5lbF9pbml0KzB4MWMvMHgxMTAKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDM0XSAg
cmV0X2Zyb21fZm9yaysweDEwLzB4MTgKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDM2XSBNZW0t
SW5mbzoKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDY0XSBhY3RpdmVfYW5vbjowIGluYWN0aXZl
X2Fub246MCBpc29sYXRlZF9hbm9uOjAKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDY0XSAgYWN0
aXZlX2ZpbGU6MCBpbmFjdGl2ZV9maWxlOjAKPj4+Pj4+Pj4+Pj4+PiBpc29sYXRlZF9maWxlOjAK
Pj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDY0XSAgdW5ldmljdGFibGU6MCBkaXJ0eTowIHdyaXRl
YmFjazowIHVuc3RhYmxlOjAKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDY0XSAgc2xhYl9yZWNs
YWltYWJsZTozNCBzbGFiX3VucmVjbGFpbWFibGU6NDQzOAo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4z
NzAwNjRdICBtYXBwZWQ6MCBzaG1lbTowIHBhZ2V0YWJsZXM6MTQgYm91bmNlOjAKPj4+Pj4+Pj4+
Pj4+PiBbICAgMzAuMzcwMDY0XSAgZnJlZToxNTM3NzE5IGZyZWVfcGNwOjIxOSBmcmVlX2NtYTow
Cj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDA3MF0gTm9kZSAwIGFjdGl2ZV9hbm9uOjBrQiBpbmFj
dGl2ZV9hbm9uOjBrQgo+Pj4+Pj4+Pj4+Pj4+IGFjdGl2ZV9maWxlOjBrQiBpbmFjdGl2ZV9maWxl
OjBrQiB1bmV2aWN0YWJsZTowa0IKPj4+Pj4+Pj4+Pj4+PiBpc29sYXRlZChhbm9uKTowa0IKPj4+
Pj4+Pj4+Pj4+PiBpc29sYXRlZChmaWxlKTowa0IgbWFwcGVkOjBrQiBkaXJ0eTowa0Igd3JpdGVi
YWNrOjBrQgo+Pj4+Pj4+Pj4+Pj4+IHNobWVtOjBrQgo+Pj4+Pj4+Pj4+Pj4+IHNobWVtX3RocDog
MGtCIHNobWVtX3BtZG1hcHBlZDogMGtCIGFub25fdGhwOiAwa0IKPj4+Pj4+Pj4+Pj4+PiB3cml0
ZWJhY2tfdG1wOjBrQgo+Pj4+Pj4+Pj4+Pj4+IHVuc3RhYmxlOjBrQiBhbGxfdW5yZWNsYWltYWJs
ZT8gbm8KPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMDczXSBOb2RlIDEgYWN0aXZlX2Fub246MGtC
IGluYWN0aXZlX2Fub246MGtCCj4+Pj4+Pj4+Pj4+Pj4gYWN0aXZlX2ZpbGU6MGtCIGluYWN0aXZl
X2ZpbGU6MGtCIHVuZXZpY3RhYmxlOjBrQgo+Pj4+Pj4+Pj4+Pj4+IGlzb2xhdGVkKGFub24pOjBr
Qgo+Pj4+Pj4+Pj4+Pj4+IGlzb2xhdGVkKGZpbGUpOjBrQiBtYXBwZWQ6MGtCIGRpcnR5OjBrQiB3
cml0ZWJhY2s6MGtCCj4+Pj4+Pj4+Pj4+Pj4gc2htZW06MGtCCj4+Pj4+Pj4+Pj4+Pj4gc2htZW1f
dGhwOiAwa0Igc2htZW1fcG1kbWFwcGVkOiAwa0IgYW5vbl90aHA6IDBrQgo+Pj4+Pj4+Pj4+Pj4+
IHdyaXRlYmFja190bXA6MGtCCj4+Pj4+Pj4+Pj4+Pj4gdW5zdGFibGU6MGtCIGFsbF91bnJlY2xh
aW1hYmxlPyBubwo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAwNzldIE5vZGUgMCBETUEgZnJlZTow
a0IgbWluOjBrQiBsb3c6MGtCIGhpZ2g6MGtCCj4+Pj4+Pj4+Pj4+Pj4gcmVzZXJ2ZWRfaGlnaGF0
b21pYzowS0IgYWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fub246MGtCCj4+Pj4+Pj4+Pj4+Pj4g
YWN0aXZlX2ZpbGU6MGtCIGluYWN0aXZlX2ZpbGU6MGtCIHVuZXZpY3RhYmxlOjBrQgo+Pj4+Pj4+
Pj4+Pj4+IHdyaXRlcGVuZGluZzowa0IKPj4+Pj4+Pj4+Pj4+PiBwcmVzZW50OjEyOGtCIG1hbmFn
ZWQ6MGtCIG1sb2NrZWQ6MGtCIGtlcm5lbF9zdGFjazowa0IKPj4+Pj4+Pj4+Pj4+PiBwYWdldGFi
bGVzOjBrQgo+Pj4+Pj4+Pj4+Pj4+IGJvdW5jZTowa0IgZnJlZV9wY3A6MGtCIGxvY2FsX3BjcDow
a0IgZnJlZV9jbWE6MGtCCj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDA4NF0gbG93bWVtX3Jlc2Vy
dmVbXTogMCAyNTAgNjA2MyA2MDYzCj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDA5MF0gTm9kZSAw
IERNQTMyIGZyZWU6MjU2MDAwa0IgbWluOjQwOGtCCj4+Pj4+Pj4+Pj4+Pj4gbG93OjY2NGtCCj4+
Pj4+Pj4+Pj4+Pj4gaGlnaDo5MjBrQiByZXNlcnZlZF9oaWdoYXRvbWljOjBLQiBhY3RpdmVfYW5v
bjowa0IKPj4+Pj4+Pj4+Pj4+PiBpbmFjdGl2ZV9hbm9uOjBrQgo+Pj4+Pj4+Pj4+Pj4+IGFjdGl2
ZV9maWxlOjBrQiBpbmFjdGl2ZV9maWxlOjBrQiB1bmV2aWN0YWJsZTowa0IKPj4+Pj4+Pj4+Pj4+
PiB3cml0ZXBlbmRpbmc6MGtCCj4+Pj4+Pj4+Pj4+Pj4gcHJlc2VudDoyNjk3MDBrQiBtYW5hZ2Vk
OjI1NjAwMGtCIG1sb2NrZWQ6MGtCCj4+Pj4+Pj4+Pj4+Pj4ga2VybmVsX3N0YWNrOjBrQgo+Pj4+
Pj4+Pj4+Pj4+IHBhZ2V0YWJsZXM6MGtCIGJvdW5jZTowa0IgZnJlZV9wY3A6MGtCIGxvY2FsX3Bj
cDowa0IKPj4+Pj4+Pj4+Pj4+PiBmcmVlX2NtYTowa0IKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcw
MDk0XSBsb3dtZW1fcmVzZXJ2ZVtdOiAwIDAgNTgxMyA1ODEzCj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMw
LjM3MDEwMF0gTm9kZSAwIE5vcm1hbCBmcmVlOjU4OTQ4NzZrQiBtaW46OTU1MmtCCj4+Pj4+Pj4+
Pj4+Pj4gbG93OjE1NTA0a0IKPj4+Pj4+Pj4+Pj4+PiBoaWdoOjIxNDU2a0IgcmVzZXJ2ZWRfaGln
aGF0b21pYzowS0IgYWN0aXZlX2Fub246MGtCCj4+Pj4+Pj4+Pj4+Pj4gaW5hY3RpdmVfYW5vbjow
a0IKPj4+Pj4+Pj4+Pj4+PiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmlsZTowa0IgdW5ldmlj
dGFibGU6MGtCCj4+Pj4+Pj4+Pj4+Pj4gd3JpdGVwZW5kaW5nOjBrQgo+Pj4+Pj4+Pj4+Pj4+IHBy
ZXNlbnQ6ODM4ODYwOGtCIG1hbmFnZWQ6NTk1MzExMmtCIG1sb2NrZWQ6MGtCCj4+Pj4+Pj4+Pj4+
Pj4ga2VybmVsX3N0YWNrOjIxNjcya0IKPj4+Pj4+Pj4+Pj4+PiBwYWdldGFibGVzOjU2a0IgYm91
bmNlOjBrQiBmcmVlX3BjcDo4NzZrQiBsb2NhbF9wY3A6MTc2a0IKPj4+Pj4+Pj4+Pj4+PiBmcmVl
X2NtYTowa0IKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcwMTA0XSBsb3dtZW1fcmVzZXJ2ZVtdOiAw
IDAgMCAwCj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDEwN10gTm9kZSAwIERNQTogMCo0a0IgMCo4
a0IgMCoxNmtCIDAqMzJrQiAwKjY0a0IKPj4+Pj4+Pj4+Pj4+PiAwKjEyOGtCCj4+Pj4+Pj4+Pj4+
Pj4gMCoyNTZrQiAwKjUxMmtCIDAqMTAyNGtCIDAqMjA0OGtCIDAqNDA5NmtCID0gMGtCCj4+Pj4+
Pj4+Pj4+Pj4gWyAgIDMwLjM3MDExM10gTm9kZSAwIERNQTMyOiAwKjRrQiAwKjhrQiAwKjE2a0Ig
MCozMmtCCj4+Pj4+Pj4+Pj4+Pj4gMCo2NGtCIDAqMTI4a0IKPj4+Pj4+Pj4+Pj4+PiAwKjI1NmtC
IDAqNTEya0IgMCoxMDI0a0IgMSoyMDQ4a0IgKE0pIDYyKjQwOTZrQiAoTSkgPQo+Pj4+Pj4+Pj4+
Pj4+IDI1NjAwMGtCCj4+Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDExOV0gTm9kZSAwIE5vcm1hbDog
Mio0a0IgKE0pIDMqOGtCIChNRSkgMioxNmtCCj4+Pj4+Pj4+Pj4+Pj4gKFVFKSAzKjMya0IKPj4+
Pj4+Pj4+Pj4+PiAoVU0pIDEqNjRrQiAoVSkgMioxMjhrQiAoTSkgMioyNTZrQiAoTUUpIDMqNTEy
a0IgKE1FKQo+Pj4+Pj4+Pj4+Pj4+IDMqMTAyNGtCIChNRSkKPj4+Pj4+Pj4+Pj4+PiAzKjIwNDhr
QiAoVU1FKSAxNDM2KjQwOTZrQiAoTSkgPSA1ODkzNjAwa0IKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAu
MzcwMTI5XSBOb2RlIDAgaHVnZXBhZ2VzX3RvdGFsPTAgaHVnZXBhZ2VzX2ZyZWU9MAo+Pj4+Pj4+
Pj4+Pj4+IGh1Z2VwYWdlc19zdXJwPTAgaHVnZXBhZ2VzX3NpemU9MTA0ODU3NmtCCj4+Pj4+Pj4+
Pj4+Pj4gWyAgIDMwLjM3MDEzMF0gMCB0b3RhbCBwYWdlY2FjaGUgcGFnZXMKPj4+Pj4+Pj4+Pj4+
PiBbICAgMzAuMzcwMTMyXSAwIHBhZ2VzIGluIHN3YXAgY2FjaGUKPj4+Pj4+Pj4+Pj4+PiBbICAg
MzAuMzcwMTM0XSBTd2FwIGNhY2hlIHN0YXRzOiBhZGQgMCwgZGVsZXRlIDAsIGZpbmQgMC8wCj4+
Pj4+Pj4+Pj4+Pj4gWyAgIDMwLjM3MDEzNV0gRnJlZSBzd2FwICA9IDBrQgo+Pj4+Pj4+Pj4+Pj4+
IFsgICAzMC4zNzAxMzZdIFRvdGFsIHN3YXAgPSAwa0IKPj4+Pj4+Pj4+Pj4+PiBbICAgMzAuMzcw
MTM3XSAyMTY0NjA5IHBhZ2VzIFJBTQo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAxMzldIDAgcGFn
ZXMgSGlnaE1lbS9Nb3ZhYmxlT25seQo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAxNDBdIDYxMjMz
MSBwYWdlcyByZXNlcnZlZAo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAxNDFdIDAgcGFnZXMgaHdw
b2lzb25lZAo+Pj4+Pj4+Pj4+Pj4+IFsgICAzMC4zNzAxNDNdIERNQTogZmFpbGVkIHRvIGFsbG9j
YXRlIDI1NiBLaUIgcG9vbCBmb3IKPj4+Pj4+Pj4+Pj4+PiBhdG9taWMKPj4+Pj4+Pj4+Pj4+PiBj
b2hlcmVudCBhbGxvY2F0aW9uCj4+Pj4+Pj4+Pj4+PiBEdXJpbmcgbXkgdGVzdGluZyBJIHNhdyB0
aGUgc2FtZSBlcnJvciBhbmQgQ2hlbidzICBzb2x1dGlvbgo+Pj4+Pj4+Pj4+Pj4gY29ycmVjdGVk
IGl0IC4KPj4+Pj4+Pj4+Pj4gV2hpY2ggY29tYmluYXRpb24geW91IGFyZSB1c2luZyBvbiB5b3Vy
IHNpZGU/IEkgYW0gdXNpbmcKPj4+Pj4+Pj4+Pj4gUHJhYmhha2FyJ3MKPj4+Pj4+Pj4+Pj4gc3Vn
Z2VzdGVkIGVudmlyb25tZW50IGFuZCBjYW4gcmVwcm9kdWNlIHRoZSBpc3N1ZQo+Pj4+Pj4+Pj4+
PiB3aXRoIG9yIHdpdGhvdXQgQ2hlbidzIGNyYXNoa2VybmVsIHN1cHBvcnQgYWJvdmUgNEcgcGF0
Y2hzZXQuCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IEkgYW0gYWxzbyB1c2luZyBhIFRodW5kZXJY
MiBwbGF0Zm9ybSB3aXRoIGxhdGVzdCBtYWtlZHVtcGZpbGUKPj4+Pj4+Pj4+Pj4gY29kZSBhbmQK
Pj4+Pj4+Pj4+Pj4ga2V4ZWMtdG9vbHMgKHdpdGggdGhlIHN1Z2dlc3RlZCBwYXRjaAo+Pj4+Pj4+
Pj4+PiA8Cj4+Pj4+Pj4+Pj4+Cj4+PiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9rZXhlYy8yMDIwLU1heS8wMjUxMjguaHRt
bF9fOyEhR3FpdlBWYTdCcmlvIUo2bFVpZzU4LUd3NlRLWm5FRVl6RWVTVTM2VC0xU3FsQjFrSW1V
MDB4dFhfbHNzNVR4LUpiVW1MRTlUSkMzZm9YQkxnJAo+Pj4+Pj4+Pj4+Pj4gKS4KPj4+Pj4+Pj4+
Pj4gVGhhbmtzLAo+Pj4+Pj4+Pj4+PiBCaHVwZXNoCj4+Pj4+Pj4+Pj4gSSBkaWQgdGhpcyBhY3Rp
dml0eSA1IG1vbnRocyBhZ28gYW5kIEkgaGF2ZSBtb3ZlZCBvbiB0byBvdGhlcgo+Pj4+Pj4+Pj4+
IGFjdGl2aXRpZXMuIE15IERNQSBmYWlsdXJlcyB3ZXJlIHJlbGF0ZWQgdG8gUENJIGRldmljZXMg
dGhhdCBjb3VsZAo+Pj4+Pj4+Pj4+IG5vdCBiZSBlbnVtZXJhdGVkIGJlY2F1c2UgIGxvdy1ETUEg
c3BhY2Ugd2FzIG5vdCAgYXZhaWxhYmxlIHdoZW4KPj4+Pj4+Pj4+PiBjcmFzaGtlcm5lbCB3YXMg
bW92ZWQgYWJvdmUgNEc7IEkgZG9u4oCZdCByZWNhbGwgdGhlIGV4YWN0IHBsYXRmb3JtLgo+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IEZvciB0aGlzIGZhaWx1cmUg
LAo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gRE1BOiBmYWlsZWQgdG8gYWxsb2NhdGUgMjU2IEtp
QiBwb29sIGZvciBhdG9taWMKPj4+Pj4+Pj4+Pj4+PiBjb2hlcmVudCBhbGxvY2F0aW9uCj4+Pj4+
Pj4+Pj4gSXMgZHVlIHRvIDoKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gMzYxODA4
MmMKPj4+Pj4+Pj4+PiAoImFybTY0IHVzZSBib3RoIFpPTkVfRE1BIGFuZCBaT05FX0RNQTMyIikK
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFdpdGggdGhlIGludHJvZHVjdGlvbiBvZiBaT05FX0RNQSB0
byBzdXBwb3J0IHRoZSBSYXNwYmVycnkgRE1BCj4+Pj4+Pj4+Pj4gcmVnaW9uIGJlbG93IDFHLCB0
aGUgY3Jhc2hrZXJuZWwgaXMgcGxhY2VkIGluIHRoZSB1cHBlciA0Rwo+Pj4+Pj4+Pj4+IFpPTkVf
RE1BXzMyIHJlZ2lvbi4gU2luY2UgdGhlIGNyYXNoa2VybmVsIGRvZXMgbm90IGhhdmUgYWNjZXNz
Cj4+Pj4+Pj4+Pj4gdG8gdGhlIFpPTkVfRE1BIHJlZ2lvbiwgaXQgcHJpbnRzIG91dCBjYWxsIHRy
YWNlIGR1cmluZyBib290dXAuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBJdCBpcyBkdWUgdG8gaGF2
aW5nIHRoaXMgQ09ORklHIGl0ZW0gIE9OICA6Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4+IENPTkZJR19aT05FX0RNQT15Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBUdXJuaW5nIG9mZiBa
T05FX0RNQSBmaXhlcyBhIGlzc3VlIGFuZCBSYXNwYmVycnkgUEkgNCB3aWxsCj4+Pj4+Pj4+Pj4g
dXNlIHRoZSBkZXZpY2UgdHJlZSB0byBzcGVjaWZ5IG1lbW9yeSBiZWxvdyAxRy4KPj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBEaXNhYmxpbmcgWk9ORV9ETUEgaXMgdGVtcG9yYXJ5IHNv
bHV0aW9uLiAgV2UgbWF5IG5lZWQgcHJvcGVyCj4+Pj4+Pj4+PiBzb2x1dGlvbgo+Pj4+Pj4+PiBQ
ZXJoYXBzIHRoZSBSYXNwYmVycnkgcGxhdGZvcm0gY29uZmlndXJhdGlvbiBkZXBlbmRlbmNpZXMg
bmVlZAo+Pj4+Pj4+PiBzZXBhcmF0ZWQgIGZyb20g4oCcc2VydmVyIGNsYXNz4oCdIEFybSAgZXF1
aXBtZW50ID8gIE9yIGF1dG8tY29uZmlndXJlZCBvbgo+Pj4+Pj4+PiBib290ID8gIENvbnN1bHQg
YW4gZXhwZXJ0IDstKQo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IEkgd291
bGQgbGlrZSB0byBzZWUgQ2hlbuKAmXMgZmVhdHVyZSBhZGRlZCAsIHBlcmhhcHMgYXMKPj4+Pj4+
Pj4+PiBFWFBFUklNRU5UQUwsICBzbyB3ZSBjYW4gZ2V0IHNvbWUgY29uZmlndXJhdGlvbiB0ZXN0
aW5nIGRvbmUgb24KPj4+Pj4+Pj4+PiBpdC4gICBJdCBjb3JyZWN0cyBoYXZpbmcgYSBETUEgem9u
ZSBpbiBsb3cgbWVtb3J5IHdoaWxlIGNyYXNoLQo+Pj4+Pj4+Pj4+IGtlcm5lbCBpcyBhYm92ZSA0
R0IuICBUaGlzIGhhcyBiZWVuIGdvaW5nIG9uIGZvciBhIHllYXIgbm93Lgo+Pj4+Pj4+Pj4gSSB3
aWxsIGFsc28gbGlrZSB0aGlzIHBhdGNoIHRvIGJlIGFkZGVkIGluIExpbnV4IGFzIGVhcmx5IGFz
Cj4+Pj4+Pj4+PiBwb3NzaWJsZS4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBJc3N1ZSBtZW50aW9uZWQg
YnkgbWUgaGFwcGVucyB3aXRoIG9yIHdpdGhvdXQgdGhpcyBwYXRjaC4KPj4+Pj4+Pj4+Cj4+Pj4+
Pj4+PiBUaGlzIHBhdGNoLXNldCBjYW4gY29uc2lkZXIgZml4aW5nIGJlY2F1c2UgaXQgdXNlcyBs
b3cgbWVtb3J5IGZvcgo+Pj4+Pj4+Pj4gRE1BCj4+Pj4+Pj4+PiAmIHN3aW90bGIgb25seS4KPj4+
Pj4+Pj4+IFdlIGNhbiBjb25zaWRlciByZXN0cmljdGluZyBjcmFzaGtlcm5lbCB3aXRoaW4gdGhl
IHJlcXVpcmVkIHJhbmdlCj4+Pj4+Pj4+PiBsaWtlIGJlbG93Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4g
ZGlmZiAtLWdpdCBhL2tlcm5lbC9jcmFzaF9jb3JlLmMgYi9rZXJuZWwvY3Jhc2hfY29yZS5jCj4+
Pj4+Pj4+PiBpbmRleCA3ZjllNWE2ZGM0OGMuLmJkNjdiOTBkMzViZCAxMDA2NDQKPj4+Pj4+Pj4+
IC0tLSBhL2tlcm5lbC9jcmFzaF9jb3JlLmMKPj4+Pj4+Pj4+ICsrKyBiL2tlcm5lbC9jcmFzaF9j
b3JlLmMKPj4+Pj4+Pj4+IEBAIC0zNTQsNyArMzU0LDcgQEAgaW50IF9faW5pdCByZXNlcnZlX2Ny
YXNoa2VybmVsX2xvdyh2b2lkKQo+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIDA7Cj4+Pj4+Pj4+PiAgICAgICAgIH0KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiAtICAgICAgIGxv
d19iYXNlID0gbWVtYmxvY2tfZmluZF9pbl9yYW5nZSgwLCAxVUxMIDw8IDMyLCBsb3dfc2l6ZSwK
Pj4+Pj4+Pj4+IENSQVNIX0FMSUdOKTsKPj4+Pj4+Pj4+ICsgICAgICAgbG93X2Jhc2UgPSBtZW1i
bG9ja19maW5kX2luX3JhbmdlKDAsMHhjMDAwMDAwMCwgbG93X3NpemUsCj4+Pj4+Pj4+PiBDUkFT
SF9BTElHTik7Cj4+Pj4+Pj4+PiAgICAgICAgIGlmICghbG93X2Jhc2UpIHsKPj4+Pj4+Pj4+ICAg
ICAgICAgICAgICAgICBwcl9lcnIoIkNhbm5vdCByZXNlcnZlICVsZE1CIGNyYXNoa2VybmVsIGxv
dyBtZW1vcnksCj4+Pj4+Pj4+PiBwbGVhc2UgdHJ5IHNtYWxsZXIgc2l6ZS5cbiIsCj4+Pj4+Pj4+
PiAgICAgICAgICAgICAgICAgICAgICAgICh1bnNpZ25lZCBsb25nKShsb3dfc2l6ZSA+PiAyMCkp
Owo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+ICAgICAgSSBzdXNwZWN0ICAweGMwMDAwMDAw
ICB3b3VsZCBuZWVkIHRvIGJlIGEgQ09ORklHIGl0ZW0gIGFuZCBub3QKPj4+Pj4+Pj4gaGFyZC1j
b2RlZC4KPj4+Pj4+Pj4KPj4+Pj4+PiBpZiB5b3UgY29uc2lkZXIgdGhpcyBhcyB2YWxpZCBjaGFu
Z2UsICBjYW4geW91IHBsZWFzZSBpbmNvcnBvcmF0ZSBhcwo+Pj4+Pj4+IHBhcnQgb2YgeW91ciBw
YXRjaC1zZXQuCj4+Pj4+PiBBZnRlciBjb21taXQgMWE4ZTFjZWY3ICgiYXJtNjQ6IHVzZSBib3Ro
IFpPTkVfRE1BIGFuZCBaT05FX0RNQTMyIinvvIx0aGUgMC0KPj4+Pj4+IDRHIG1lbW9yeSBpcyBz
cGxpdGVkCj4+Pj4+PiB0byBETUEgW21lbSAweDAwMDAwMDAwMDAwMDAwMDAtMHgwMDAwMDAwMDNm
ZmZmZmZmXSBhbmQgRE1BMzIgW21lbQo+Pj4+Pj4gMHgwMDAwMDAwMDQwMDAwMDAwLTB4MDAwMDAw
MDBmZmZmZmZmZl0gb24gYXJtNjQuCj4+Pj4+Pgo+Pj4+Pj4gICBGcm9tIHRoZSBhYm92ZSBkaXNj
dXNzaW9uLCBvbiB5b3VyIHBsYXRmb3JtLCB0aGUgbG93IGNyYXNoa2VybmVsIGZhbGwgaW4KPj4+
Pj4+IERNQTMyIHJlZ2lvbiwgYnV0IHlvdXIgZW52aXJvbm1lbnQgbmVlZHMgdG8gYWNjZXNzIERN
QQo+Pj4+Pj4gcmVnaW9uLCBzbyB0aGVyZSBpcyB0aGUgY2FsbCB0cmFjZS4KPj4+Pj4+Cj4+Pj4+
PiBJIGhhdmUgYSBxdWVzdGlvbiwgd2h5IGRvIHlvdSBjaG9vc2UgMHhjMDAwMDAwMCBoZXJlPwo+
Pj4+Pj4KPj4+Pj4+IEJlc2lkZXMsIHRoaXMgaXMgY29tbW9uIGNvZGUsIHdlIGFsc28gbmVlZCB0
byBjb25zaWRlciBhYm91dCB4ODYuCj4+Pj4+Pgo+Pj4+PiAgICArIG5zYWVuemp1bGllbm5lQHN1
c2UuZGUKPj4+IFRoYW5rcyBmb3IgYWRkaW5nIG1lIHRvIHRoZSBjb252ZXJzYXRpb24sIGFuZCBz
b3JyeSBmb3IgdGhlIGhlYWRhY2hlcy4KPj4+Cj4+Pj4+ICAgICBFeGFjdGx5IC4gIFRoaXMgaXMg
d2h5IGl0IG5lZWRzIHRvIGJlIGEgQ09ORklHIG9wdGlvbiBmb3IgIFJhc3BiZXJyeQo+Pj4+PiAu
LiwgIG9yIGRldmljZSB0cmVlIG9wdGlvbi4KPj4+Pj4KPj4+Pj4KPj4+Pj4gICAgIFdlIGNvdWxk
IHJldmVydCAxYThlMWNlZjcgc2luY2UgaXQgYnJva2UgIEFybSBrZHVtcCB0b28uCj4+Pj4gV2Vs
bCwgdW5mb3J0dW5hdGVseSB0aGUgcGF0Y2ggZm9yIGNvbW1pdCAxYThlMWNlZjc2MDMgKCJhcm02
NDogdXNlCj4+Pj4gYm90aCBaT05FX0RNQSBhbmQgWk9ORV9ETUEzMiIpIHdhcyBub3QgQ2MnZWQg
dG8gdGhlIGtleGVjIG1haWxpbmcKPj4+PiBsaXN0LCB0aHVzIHdlIGNvdWxkbid0IGdldCBtYW55
IGV5ZXMgb24gaXQgZm9yIGEgdGhvcm91Z2ggcmV2aWV3IGZyb20KPj4+PiBrZXhlYy9rZHVtcCBw
LW8tdi4KPj4+Pgo+Pj4+IEFsc28gd2UgaGlzdG9yaWNhbGx5IG5ldmVyIGhhZCBkaXN0aW5jdGlv
biBpbiBjb21tb24gYXJjaCBjb2RlIG9uIHRoZQo+Pj4+IGJhc2lzIG9mIHRoZSBpbnRlbmRlZCBl
bmQgdXNlLWNhc2U6IGVtYmVkZGVkLCBzZXJ2ZXIgb3IgYXV0b21vdGl2ZSwgc28KPj4+PiBJIGFt
IG5vdCBzdXJlIGludHJvZHVjaW5nIGEgUmFzcGJlcnJ5IHNwZWNpZmljIENPTkZJRyBvcHRpb24g
d291bGQgYmUKPj4+PiBhIGdvb2QgaWRlYS4KPj4+ICsxCj4+Pgo+Pj4gICBGcm9tIHRoZSBkaXN0
cm9zIHBlcnNwZWN0aXZlIGl0J3MgdmVyeSBpbXBvcnRhbnQgdG8ga2VlcCBhIHNpbmdsZSBrZXJu
ZWwgaW1hZ2UuCj4+Pgo+Pj4+IFNvLCByYXRoZXIgdGhhbiByZXZlcnRpbmcgdGhlIHBhdGNoLCB3
ZSBjYW4gbG9vayBhdCBhZGRyZXNzaW5nIHRoZQo+Pj4+IHNhbWUgcHJvcGVybHkgdGhpcyB0aW1l
IC0gZXNwZWNpYWxseSBmcm9tIGEga2R1bXAgcC1vLXYuCj4+Pj4gVGhpcyBpc3N1ZSBoYXMgYmVl
biByZXBvcnRlZCBieSBzb21lIFJlZCBIYXQgYXJtNjQgcGFydG5lcnMgd2l0aAo+Pj4+IHVwc3Ry
ZWFtIGtlcm5lbCBhbHNvIGFuZCBhcyB3ZSBoYXZlIG5vdGljZWQgaW4gdGhlIHBhc3QgYXMgd2Vs
bCwKPj4+PiBoYXJkY29kaW5nIHRoZSBwbGFjZW1lbnQgb2YgdGhlIGNyYXNoa2VybmVsIGJhc2Ug
YWRkcmVzcyAodW5sZXNzIHRoZQo+Pj4+IGJhc2UgYWRkcmVzcyBpcyBzcGVjaWZpZWQgYnkgYSBj
cmFzaGtlcm5lbD1YQFkgbGlrZSBib290YXJncykgaXMgYWxzbwo+Pj4+IG5vdCBhIHBvcnRhYmxl
IHN1Z2dlc3Rpb24uCj4+Pj4KPj4+PiBJIGFtIHdvcmtpbmcgb24gYSBwb3NzaWJsZSBmaXggYW5k
IHdpbGwgaGF2ZSBtb3JlIHVwZGF0ZXMgb24gdGhlIHNhbWUKPj4+PiBpbiBhIGRheS1vci10d28u
Cj4+PiBQbGVhc2Uga2VlcCBtZSBpbiB0aGUgbG9vcCwgd2UndmUgYWxzbyBoYWQgaXNzdWVzIHBv
aW50aW5nIHRvIHRoaXMgcmVwb3J0ZWQgYnkKPj4+IFNVU0UgcGFydG5lcnMuIEkgY2FuIGRvIHNv
bWUgdGVzdGluZyBib3RoIG9uIHRoZSBSUGk0IGFuZCBvbiBiaWcgc2VydmVycyB0aGF0Cj4+PiBu
ZWVkIGh1Z2UgY3Jhc2hrZXJuZWwgc2l6ZXMuCj4+Pgo+Pj4gUmVnYXJkcywKPj4+IE5pY29sYXMK
Pj4+Cj4+ICAgIEhpCj4+Cj4+ICAgIEhhcyB0aGVyZSBiZWVuIGFueSBwcm9ncmVzcyBvbiB0aGlz
ID8gSXQgYXBwZWFycyB3ZSBhcmUgc3RhbGxlZCBiZWNhdXNlIE5pY29sYXMncyAgYW5kIENoZW4n
cyBjaGFuZ2VzIGFyZSBub3QgY29tcGF0aWJsZSAuIE9uZSBpcyBuZWVkZWQgZm9yIFJQaTQgYW5k
IHRoZSBvdGhlciBmb3Igc2VydmVyIGNsYXNzIGVxdWlwbWVudC4KPj4KPj4KPj4gVGhhbmtzLAo+
Pgo+PiBKb2huCj4+Cj4+Cj4gSGkgYWxsLAo+Cj4gVGhhbmtzIGZvciBKb2huJ3MgcmVtaW5kZXIu
Cj4gY29tbWl0IDFhOGUxY2VmNyAoImFybTY0OiB1c2UgYm90aCBaT05FX0RNQSBhbmQgWk9ORV9E
TUEzMiIpIGJyb2tlbiB0aGUgYXJtNjQga2R1bXAsCj4gdGhlcmUgaXMgYSBzaW1wbGUgc29sdXRp
b24gc2ltaWxhciB0byBwaydzIHRvIGZpeCB0aGlzLCBzZWUgYmVsb3c6Cj4KPiBJbiBjcmFzaCBk
dW1wIGtlcm5lbCwgaWYgdGhlIHBlcmlwaGVyYWxzIG5lZWQgdG8gdXNlIFpPTkVfRE1BIGxpa2Ug
dGhlIHRoZSBSYXNwYmVycnkgUGkgNCwgYmFzZWQgb24KPiBteSBzb2x1dGlvbiwgd2UgYWRqdXN0
ZWQgdGhlIG1lbW9yeSByYW5nZSBpbiBtZW1ibG9ja19maW5kX2luX3JhbmdlLgo+Cj4gZGlmZiAt
LWdpdCBhL2tlcm5lbC9jcmFzaF9jb3JlLmMgYi9rZXJuZWwvY3Jhc2hfY29yZS5jCj4gaW5kZXgg
YTc1ODBkMjkxYzM3Li5lYjE2YzZkNTRiNzMgMTAwNjQ0Cj4gLS0tIGEva2VybmVsL2NyYXNoX2Nv
cmUuYwo+ICsrKyBiL2tlcm5lbC9jcmFzaF9jb3JlLmMKPiBAQCAtMzIwLDYgKzMyMCw3IEBAIGlu
dCBfX2luaXQgcmVzZXJ2ZV9jcmFzaGtlcm5lbF9sb3codm9pZCkKPiAgICAgICAgICB1bnNpZ25l
ZCBsb25nIGxvbmcgYmFzZSwgbG93X2Jhc2UgPSAwLCBsb3dfc2l6ZSA9IDA7Cj4gICAgICAgICAg
dW5zaWduZWQgbG9uZyB0b3RhbF9sb3dfbWVtOwo+ICAgICAgICAgIGludCByZXQ7Cj4gKyAgICAg
ICBwaHlzX2FkZHJfdCBjcmFzaF9tYXggPSAxVUxMIDw8IDMyOwo+ICAgCj4gICAgICAgICAgdG90
YWxfbG93X21lbSA9IG1lbWJsb2NrX21lbV9zaXplKDFVTCA8PCAoMzIgLSBQQUdFX1NISUZUKSk7
Cj4gICAKPiBAQCAtMzUyLDcgKzM1MywxMiBAQCBpbnQgX19pbml0IHJlc2VydmVfY3Jhc2hrZXJu
ZWxfbG93KHZvaWQpCj4gICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICAgICAg
ICAgIH0KPiAgIAo+IC0gICAgICAgbG93X2Jhc2UgPSBtZW1ibG9ja19maW5kX2luX3JhbmdlKDAs
IDFVTEwgPDwgMzIsIGxvd19zaXplLCBDUkFTSF9BTElHTik7Cj4gKyNpZmRlZiBDT05GSUdfQVJN
NjQKPiArICAgICAgIGlmIChJU19FTkFCTEVEKENPTkZJR19aT05FX0RNQSkpIHsKPiArICAgICAg
ICAgICAgICAgY3Jhc2hfbWF4ID0gYXJtNjRfZG1hX3BoeXNfbGltaXQ7Cj4gKyAgICAgICB9Cj4g
KyNlbmRpZgo+ICsgICAgICAgbG93X2Jhc2UgPSBtZW1ibG9ja19maW5kX2luX3JhbmdlKDAsIGNy
YXNoX21heCwgbG93X3NpemUsIENSQVNIX0FMSUdOKTsKPiAgICAgICAgICBpZiAoIWxvd19iYXNl
KSB7Cj4gICAgICAgICAgICAgICAgICBwcl9lcnIoIkNhbm5vdCByZXNlcnZlICVsZE1CIGNyYXNo
a2VybmVsIGxvdyBtZW1vcnksIHBsZWFzZSB0cnkgc21hbGxlciBzaXplLlxuIiwKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAodW5zaWduZWQgbG9uZykobG93X3NpemUgPj4gMjApKTsKPgo+Cj4g
VGhhbmtzLAo+IENoZW4gWmhvdQo+CkhpLAoKSSBkb24ndCBoYXZlIGFueSBvYmplY3Rpb25zIHRv
IHRoaXMgcHJvcG9zYWwuCgoKCgoKCj4+IC4KPj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
