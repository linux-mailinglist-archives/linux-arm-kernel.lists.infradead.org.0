Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24AA19C6B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 18:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEGgBXNOXpgqVUEOOcQzcJt5R/cAElZJNvUG2icj/FE=; b=qdTepTPvzJtOIM
	xEniX15ZcYdEeDnCVVudOWBrcrIPXZOZQ8auIid+diJgHVBEzKyhyk7rxCxu6ILbZh5uDVd6KmzDd
	Teh9LPHfxTPj2mjCuskaPTd84XZ6GmOD5ry4sCvqESr9k7uF+HyFQ3yK8JbRuYbzXYcLT6yrKyKOT
	rHqAE88vnUzKov+ISSs/xwdp9YQ2p8CMnGlKQRTkrO0EiZwBSNKj2zC/V+75iWXyn00kC569hJyJO
	X87CYSRWrZhkKZvkCCZd6tysKGZXZttYkCyiCAHJfeTBRzru7SQWt5gW/Sn5oXK2JsY8f92JlS7+0
	F1s2yEe30iErm/7J69TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2LC-0000iB-3x; Thu, 02 Apr 2020 16:05:14 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2Kt-0000gF-TM
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 16:04:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1585843462;
 bh=3PgLAuydRT+5g+YRJ444jnYc6a+b6obBiBVvaNlIt9k=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=jO1PJYr95pm59lNOTfYZWq3+76tKjlD8E1fu0gWSfZoGqjKQKzlCEiPUWDcZcyvzy
 HD9yqnvIAAoBmkJNXVEvvY67ogCugZNtFjK/6dLBJF2h8pAWR5G4B9wgxj1KTzVd8F
 zbdbKZmXzHlXSHK8DE37wYOErpuTTEtNjyVuaKBE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([78.49.187.28]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M3jwL-1j2v150pf7-00rKRS; Thu, 02
 Apr 2020 18:04:22 +0200
Subject: Re: ARM: zx: Remove duplicate error message
To: tangbin@cmss.chinamobile.com, Jun Nie <jun.nie@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <2b9c1939-ffa6-1ad1-5927-5cc4468ef846@web.de>
 <2020040222473842104710@cmss.chinamobile.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <7d9b076a-3530-3540-6bf8-408b2db3c75b@web.de>
Date: Thu, 2 Apr 2020 18:04:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <2020040222473842104710@cmss.chinamobile.com>
Content-Language: en-US
X-Provags-ID: V03:K1:Kc1ku/5UmXZEzCU5NCrLXQ0ArdzkSzaAPdhomasz/VEMhJRbqmP
 T971OUN2Io0HmJ97Rvt6EduEguHkyZSXGYPfD58GCi2bHoaGLWSmN8yhoKxWUXkwC7QCGTx
 1uinOpuj1Aa0ST7AN9XL9MZTzQ1B2tvLYvinv1egNIsmisWvYLG9Q0HjST/RIuJArABIitM
 qwl/XaGr9f0MP0k2x1GBw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FWdcy/eI6dw=:e5gEEur2o4711gcuDItZGT
 p0JpeV+noG12M6RhA/V+1ZZQAXaDFkVAuTxVQ5jtM4mSjdhVnRYYfl3bXwpa0Phu1SQDu997L
 DhY8708d+bbV5q2YVik1XlLh++25bNrG/VelmE9USb5FfpLIOWd8JBxVBKzzeQuqJK2DjvhBh
 QpZH4DfQHSUJ59WG48Z56scXUAEUMYKsMCmATXK7uM6giuCCMXNQx2smrhuj93cokzWWgctkO
 LoEFzi/S3SnwHDbeRUiQ6YmFU7PTnbABMFJzJXaTCVrVZDYPGTghAmhTZXVpzsX++q9f8mDmP
 u9Zpxpz4f4lS6uktCKZb6aPNxJG/fH2kCyyu8DjrlNdYPKyKUjgdY+Xx+qlr7sfsC5H3wuSb3
 ef9fxtiA7XOJD6yN6kfkaR0M90yqBG3U40x1MUj/PxVBm7XcOwR12FUigwD6aNxwDcrkoRiPs
 waVs7iy3u01BmEGW4GOa6Fr95gusuLNxSJfqpw4NPvHhF6OMnLGZ7iOLqcLEHZQ6ejICkkhhk
 DDxvEDcR0NnL3KYhIgTyJKzkC/tdEAu1inEJ03pbIfbzIee/rJ/ImcqmXnnwUmOgFeePPXLe6
 J/clAx+m8VsbxWkf6RLFAQRtgdbOm8SSvFXf9ozy1uf3lTdohw6F1S7Kszno6J+OW03bIfMPp
 Pt8+MFNkBQn9JiYiQpsl0w6Y4VSkhjVP6/MXH86lM9Z0v05N9nthLF0k8Nnbp3NtxXTe/JDa0
 KkzDpw2j/tbVGBgAgmDymxKSKlB/ATJb8Ock8YrEka0RV3pq7zIamSvtwmyjMYvAk7B6YEAOI
 ImYIEQwJeSG8A4cqhuMEEhYVaiAzXE3YzszzNLGaSFvLq49KK/KP1I+6jtfmv2YZRXAan6L3k
 Si9+unCLB9AOQcy4zGP1rf/ndoVUoBK+VI2Rv/fsWWSyON4cbJKIMr29anh5j6D8yANIHMwwa
 34b5EudFBiHrjaUOYZbAhes6PqgsoDsUYui/8PBCmOScrdPbYt0UIPNEqPFaEpPDzCAFduq20
 crIUsj0R97izAHjJ6I7CsM8+P63QhZUEMz9D8VCWj/9wvPxTNk0Al+G4xF7y40UvVgCpD4NHV
 nm0QCePvl0I8x8/Cz3uicIKQTEikHQSQXotXvr+ufKkFj1fJLbZlmaH+FtGE8SIk7Mv9ZO2sG
 PLYmkoOj/I5GQ/En/438klrWlmC1wXTUowYrSJ/Icuw3S/qptMjWTcPfPPkNRzH8wtEYF4QkJ
 BhLXF5XY7gzisoiTO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_090456_282925_92454760 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBUaGFuayB5b3UgZm9yIHlvdXIgcmVwbGF544CCCgpJIGhvcGUgdGhhdCB5b3UgaW50ZXJwcmV0
IG15IHJlcGx5IGFzIGFub3RoZXIgY29uc3RydWN0aXZlIHBhdGNoIHJldmlldy4KCgo+IEknbSBh
IG5ld2VyIGhlcmUKClRoZSBwb3NzaWJpbGl0aWVzIGZvciBmdXJ0aGVyIGNvbnRyaWJ1dGlvbnMg
YXJlIGludGVyZXN0aW5nLCBhcmVuJ3QgdGhleT8KCgo+IGFuZCBJIGRvbid0IHJlY2VpdmUgYW55
IHN1Z2dlc3Rpb24gZm9yIHRoaXMgcGF0Y2gsCgpZb3UgZ290IGEgcG9zaXRpdmUgdGFnIGJ5IEp1
biBOaWUuCgoKPiBzbyBtYXliZSB0aGUgY29tbWl0dGVyIHRoaW5rIGl0IGlzIHVzZWxlc3PjgIIK
ClRoZSBwcm9wb3NlZCBjaGFuZ2UgaXMgZ2VuZXJhbGx5IGhlbHBmdWwuCgoqIEFkZGl0aW9uYWwg
ZGVwZW5kZW5jaWVzIG1pZ2h0IGJlIHJlbGV2YW50IGZvciB0aGUgc29mdHdhcmUgZXZvbHV0aW9u
LgoKKiBQbGVhc2UgaW1wcm92ZSBhbHNvIHRoZSBzcGVsbGluZyBmb3IgdGhlIGNvbW1pdCBtZXNz
YWdlLgoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
