Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A962E3FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 20:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xa9mDr1TcquDYQoBar4qdDxOykC9AeZcOfAf9F/8nS4=; b=Ei0Q6PJZ5+6gZE
	4myU0CdwSBo+lu3CDXgk6zjC6oh1wTocyPlGEFqdiZQKfWna2oB8hXMbYxHo3ZR1ioaf+CKOVGHpa
	3VU86SEXnsMiMt4plRvbnRZZHhXQFyMJhaZSDD5P+6svkVTaSOubHy4azk/t58i8ULKpbL6azY4Hz
	bX8/cbt1ZDlb0oXcohGs0L39ZRnMUUnNbTdDTaEQQl90fDEMw3ChQWqnMGE6t8DYC7eZ3+FzKIq6z
	PzAMlWLh/3hiNgPvWsJsGPU4ZuzmEYPDf0AwRATDrEsd7+jJ5m7fUPTymXvvQBmklzUkgZ+fkOkW0
	VkFSjktFbIizPoS0Dcww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW2s5-0004CN-9Q; Wed, 29 May 2019 18:00:17 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW2rx-0003cI-04
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 18:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559152784;
 bh=7XibJJMuc3gBDgywBVlMCtRhxW465B1HJ06mrxSAsUE=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=JZSdPvPZyjtbXTW9tH6mVZn5xq09RmfdIEVCgQP1kFn5o7MkoFGYgrfF0NmojvgyT
 1RQlFckN176BOom4F7PgiDoJ3/x/5k2rNzQeMmijuXrC5rhQNxHQZNLGuYt/D3j3gx
 dVn1wb4zPg2djFQ8OZDS9nb414RtEojXQr/rwFng=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.166] ([37.4.249.160]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MHG8g-1hRhHU21se-00DDtz; Wed, 29
 May 2019 19:59:44 +0200
Subject: Re: usb: dwc2: RODATA_FULL_DEFAULT_ENABLED causes kernel oops
From: Stefan Wahren <wahrenst@gmx.net>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>
References: <0ae6261e-96b3-cf8b-d523-a6b8851c951b@gmx.net>
 <CAKv9HNaJg3OB3DrC_aJe0M97dFP9A0_Jew_wFqReHvzDoFF+sg@mail.gmail.com>
 <a908bca3-b410-d58f-1011-4f47eca85da4@gmx.net>
Message-ID: <1765e293-c0a2-e3b6-4942-fdf3f3cea063@gmx.net>
Date: Wed, 29 May 2019 19:59:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a908bca3-b410-d58f-1011-4f47eca85da4@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:mUFCBMVahBmZYHJb/LAv73s6r3HZbxtjh7mQx/Dl8htmdZ/t7Bs
 7DirHKfIBJMaB6MSkZypPbO2lkCC2wkE41vHX3ePR6mUxV03lKlvuOoViJKMshRAok5JbmS
 Bj03kNFI9F/2hNfjiDvzAKXo78kLas+se+vbcJdfyGiy/dbuHS/YzkUu2fxHDVH+B/9Cusm
 UcI3BYsZkgIHHBmMj4g8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7QXFQJOxifg=:7ijpr0RfE8w7mt4UMkuG5+
 g+AOU2UMrUY37zDRA3I5NntA6Ry0s3278fImr+ABQsfalFzCmAhvDHwwP7J7zh31Bo3yuS+67
 KEYpYvpDKYZSrnoIA1vX/O/LLRTtSOhomDm1vT2QPQ7JDbYT48OD9wrXcvhicL5IbHClEHXva
 Q6wQiH0r0Y355mJeyfIJedl7UzT8pVmCLcP68ZdsoGNiozp9+yvOWeYV7ClqToDXDDXTZ/p7m
 W5jnOAiQ+M9xsj81ySl6MyLQzLZx79+7y5cMgGhpj10GCod5rSoEvHnUtdWSBXweqcOFGroB7
 QJE2ANHGoYa7rYp3bT495UYpz4k3+Xkh3XdSqB1VylhNdHMqb6SbhBT6hx+5+wqO8YpEu97gj
 G61QOVcXvcVdaAowlM69AeExycoPr1NWErInlZR18rgAsfUm/3J57fS76akHf/L4Mv0LDZf1w
 v3dUEZ9ICh5m2MAjrZNIMd1pNyvq6iiPnkqIZyFKlfc7cm/XqTRPju3cnqF3lT3Ru6VufpbLP
 eKVYr9LYRm1E6F3M5CyaMlSKmN7OcjtihIJQcAwKIQTeLGKl/mH0DBC5riGgj6HQJDJxSDPf6
 KOolOZhIv3ueK0pjWu6JPt5Y3NVJuXsjvuSLdNQXL/gmY0m7N3CyD2F60h9Za3ZbjU76kG+/n
 2bI0JGFCKAXFceHT2w6qEY8KKzaoP8aD3trNv+2AzDQ6EV/Tpcas3yx3drBNoKsv44qFq0yOi
 Ov+P+RK1ZRJDepv3femAhiRaJxqvvYBgzTY3uzs8ITQib6jz4OHeg9SKeQuITnzym/Uol0HhA
 ttGUdMTmZZxSnr6LfLfsv6bPiZsr8M8PHooOam0NIvbq17mHj+F6ZrQwsV7ODVGS9BQntfG1+
 hRaQ85urIOTk2Cxc8gs/3Adx6z2g8jCNtTj9KVH9MUbmhVF3AP0UvtDVnESlA9qmYF5V8qNKg
 5pbJ6lMLhDjTIBe5aKNDSlZDqE2XVsnf7WxxAaHpMxQwZNsmawuEb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_110009_377699_AEC43E00 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>, linux-usb@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?B?QW50dGkgU2VwcMOkbMOk?= <a.seppala@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Martin Schiller <ms@dev.tdt.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWluYXMsCmhpIEZlbGlwZSwKCkFtIDI2LjA1LjE5IHVtIDIxOjU4IHNjaHJpZWIgU3RlZmFu
IFdhaHJlbjoKPiBIaSwKPgo+IEFtIDI2LjA1LjE5IHVtIDEyOjQ0IHNjaHJpZWIgQW50dGkgU2Vw
cMOkbMOkOgo+PiBIZWxsby4KPj4KPj4gVGhpcyBpcyBqdXN0IGEgc2hvdCBpbiB0aGUgZGFyayBi
dXQgaGF2ZSB5b3UgdHJpZWQgdG8gYXBwbHkgRE1BIGNhY2hlCj4+IGFsaWdubWVudCBpc3N1ZSBm
aXggWzFdIGFzIGEgdGhpcmQgd29ya2Fyb3VuZCBhbHRlcm5hdGl2ZT8KPj4gSWYgaXQgaGVscHMg
dGhlIGZpeCBzaG91bGQgYmUgbWVyZ2VkIHVwc3RyZWFtLgo+IHllcy4gQWZ0ZXIgYXBwbHlpbmcg
TWFydGluJ3MgcGF0Y2gsIGkgd2Fzbid0IGFibGUgdG8gcmVwcm9kdWNlIHRoaXMKPiBrZXJuZWwg
b29wcy4KPgo+IFRoYW5rcyB0byBhbGwKPgo+PiBbMV0gLSBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3BhdGNoLzEwODE3Mzc3LwpkbyB3ZSBuZWVkIGEgcmVzZW5kIG9mIHRoaXMgcGF0Y2g/
IElzIHRoZXJlIHJlYXNvbiB3aHkgaXQgaGFzbid0IGJlZW4KYXBwbGllZD8KPj4KPj4gQnIsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
