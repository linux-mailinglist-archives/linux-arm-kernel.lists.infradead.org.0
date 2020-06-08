Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4281F186F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 14:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbzKRNpjxPzZ0+O7ucv+RyK0LgV7oEExG0W+k6kYP+E=; b=Tc2HsLiZ6N6/Sg
	rpJTtpthDo8+KGdPC1C3LbtjJmE5fh05vBV0Ruw/T1jmn+KO0Bl+A/OZFsPghqX/ghuxRjMDgZ3VJ
	Eby/4YlidO3Lz8ZuTGPS3kUo1JTpeDJU3Dfav+/iMlvGQmGbBQ7slpIY6KlZVggdr57LsxuS4oCXn
	IcuN+XExqDWmGYh4NH5+OwQfI65j2VLOB5czNGN3ul5BdrJ+/ee+ABQLu+FV5mdcDjP3t4Xp/ah38
	uFt9N17vohfwfV9KTHmngBTy7nU3pijkKCzsBQyOtbQFH4AjMyazVxQwQWTL5XE3iE8evorYkKGd4
	+moDE/kdZbhx36JI1Wcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiGXN-0003i8-NX; Mon, 08 Jun 2020 12:05:57 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiGXG-0003hd-Qk
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 12:05:52 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 058C4Q96145904; Mon, 8 Jun 2020 08:05:21 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 31hmpwrj2f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 08 Jun 2020 08:05:21 -0400
Received: from m0098420.ppops.net (m0098420.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 058C5DwW150022;
 Mon, 8 Jun 2020 08:05:17 -0400
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.71])
 by mx0b-001b2d01.pphosted.com with ESMTP id 31hmpwrgxs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 08 Jun 2020 08:05:16 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
 by ppma02fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 058C162I023522;
 Mon, 8 Jun 2020 12:02:31 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com
 (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
 by ppma02fra.de.ibm.com with ESMTP id 31g2s81kfd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 08 Jun 2020 12:02:31 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 058C2SIj47775812
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 8 Jun 2020 12:02:28 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C857EA405C;
 Mon,  8 Jun 2020 12:02:28 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4C0B5A4068;
 Mon,  8 Jun 2020 12:02:25 +0000 (GMT)
Received: from localhost.localdomain (unknown [9.85.178.150])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon,  8 Jun 2020 12:02:25 +0000 (GMT)
Message-ID: <1591617744.4638.42.camel@linux.ibm.com>
Subject: Re: [v1 PATCH 1/2] Refactoring carrying over IMA measuremnet logs
 over Kexec.
From: Mimi Zohar <zohar@linux.ibm.com>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org
Date: Mon, 08 Jun 2020 08:02:24 -0400
In-Reply-To: <20200607233323.22375-2-prsriva@linux.microsoft.com>
References: <20200607233323.22375-1-prsriva@linux.microsoft.com>
 <20200607233323.22375-2-prsriva@linux.microsoft.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-08_11:2020-06-08,
 2020-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0
 cotscore=-2147483648 spamscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0 mlxlogscore=945
 priorityscore=1501 phishscore=0 clxscore=1011 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006080093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_050550_988174_1D8AB522 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, tao.li@vivo.com, paulus@samba.org,
 vincenzo.frascino@arm.com, frowand.list@gmail.com, nramas@linux.microsoft.com,
 mpe@ellerman.id.au, masahiroy@kernel.org, jmorris@namei.org,
 takahiro.akashi@linaro.org, benh@kernel.crashing.org, serge@hallyn.com,
 pasha.tatashin@soleen.com, will@kernel.org, robh+dt@kernel.org,
 hsinyi@chromium.org, tusharsu@linux.microsoft.com, tglx@linutronix.de,
 allison@lohutok.net, christophe.leroy@c-s.fr, mbrugger@suse.com,
 balajib@linux.microsoft.com, dmitry.kasatkin@gmail.com, james.morse@arm.com,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUHJha2hhciwKCk9uIFN1biwgMjAyMC0wNi0wNyBhdCAxNjozMyAtMDcwMCwgUHJha2hhciBT
cml2YXN0YXZhIHdyb3RlOgo+IFRoaXMgcGF0Y2ggbW92ZXMgdGhlIG5vbi1hcmNoaXRlY3R1cmUg
c3BlY2lmaWMgY29kZSBvdXQgb2YgcG93ZXJwYyBhbmQKPiAgYWRkcyB0byBzZWN1cml0eS9pbWEu
IAo+IFVwZGF0ZSB0aGUgYXJtNjQgYW5kIHBvd2VycGMga2V4ZWMgZmlsZSBsb2FkIHBhdGhzIHRv
IGNhcnJ5IHRoZSBJTUEgbWVhc3VyZW1lbnQKPiBsb2dzLgoKRnJvbSB5b3VyIHBhdGNoIGRlc2Ny
aXB0aW9uLCB0aGlzIHBhdGNoIHNob3VsZCBiZSBicm9rZW4gdXAuIMKgTW92aW5nCnRoZSBub24t
YXJjaGl0ZWN0dXJlIHNwZWNpZmljIGNvZGUgb3V0IG9mIHBvd2VycGMgc2hvdWxkIGJlIG9uZSBw
YXRjaC4KwqBBZGRpdGlvbmFsIHN1cHBvcnQgc2hvdWxkIGJlIGluIGFub3RoZXIgcGF0Y2guIMKg
QWZ0ZXIgZWFjaCBwYXRjaCwgdGhlCmNvZGUgc2hvdWxkIHdvcmsgcHJvcGVybHkuCgpCZWZvcmUg
cG9zdGluZyBwYXRjaGVzLCBwbGVhc2UgcmV2aWV3IHRoZW0sIG1ha2luZyBzdXJlCnVubmVjZXNz
YXJ5L3Vud2FudGVkIGNoYW5nZXMgaGF2ZW4ndCBjcmVwdCBpbiAtIGNvbW1lbnRpbmcgb3V0IGNv
ZGUsCm1vdmluZyBjb2RlIHdpdGhvdXQgcmVtb3ZpbmcgdGhlIG9yaWdpbmFsIGNvZGUuCgp0aGFu
a3MsCgpNaW1pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
