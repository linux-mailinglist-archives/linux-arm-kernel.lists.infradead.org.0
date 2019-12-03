Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3158910FE95
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zLGVQTQM1SUJoc/+K2R/78W3E4d5OsMkBg/WCM0e31U=; b=RKZP9A9wxZ3mGyt2nQPRyqgY+
	NjKoP3t8MX0Ktpn3ha6JgAuTDt7T1bEu7FQP8W7S1FU3OOZvcin8nxM0M9AzdHGfg0a/YEWxUKzEf
	KHhtI8CM3wTe91juVU9xZueSzlvMxw+EnTmOefZp8RjNt0fCrbJYqEmF8oDwpbL5zgazVkxosoyYF
	KMYrEW3DsMYu0GglNQW1r96ZTJDNK5XrERw9AGvSCrOhRluwTSXdZKXDrB94Feu8OJPTNpWcOmi6t
	IVra1aOCa6j4DVhpZMHGOIviD2TbDAp/rms7HF+ySiOuB5ODBM/E9DVSBt+UXNeyd07a5Iy5fBJ70
	sHxXmsS/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic88g-0006OX-Jn; Tue, 03 Dec 2019 13:22:50 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic88X-0006O7-Cb
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575379340;
 bh=Yq7dh2H2HbqzSB8iffyguOwW3+7XGnKb8rcDdey5ZXw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=A9Ap3tbRijOE/s3ChROMRbJ5wkkaXi9cfsQJlVz9Ts8px8r+NcutPLM2kflpE8J19
 lS4s3UA88kcCDgAWW13gKmpvzrCSTQ53kbgGLhufbnHciiLlCv5PKQmGcLovKR3DAD
 IOfktlUejkcDquNlJ1VFgxVLI5CD308EL9ncy7lM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from zaphod.peppercon.de ([212.80.250.50]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MXp9Y-1iH9ua2kmq-00YATE; Tue, 03
 Dec 2019 14:22:20 +0100
Subject: Re: [PATCH] ARM: dts: at91: Reenable UART TX pull-ups
To: Peter Rosin <peda@axentia.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20191128100629.10247-1-inguin@gmx.de>
 <8e8dfc02-bdab-d6f1-f6e9-e1dba7e38bfd@axentia.se>
From: Ingo van Lil <inguin@gmx.de>
Message-ID: <5b7ff913-bca7-2695-ab72-76350778a577@gmx.de>
Date: Tue, 3 Dec 2019 14:22:15 +0100
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.21)
 Gecko/20090320 Fedora/2.0.0.21-1.fc10 Thunderbird/2.0.0.21 Mnenhy/0.7.6.666
MIME-Version: 1.0
In-Reply-To: <8e8dfc02-bdab-d6f1-f6e9-e1dba7e38bfd@axentia.se>
Content-Language: en-US
X-Provags-ID: V03:K1:nWRfkGZTvSATSzYu6W0zbX1SUX62nVGxDiV3yNadfZ3Wu0DB2J8
 AeOBeQlMLq1EQqyurma/lZP0IXtrgE1+woInNLjOoONCxn2UHmtoPuGQ5hheZLtBwX8nCVU
 ujZRBLfz/zegEsKkMRVMV23zNk8QgJNJnusMSxqfx3dDYD8/k/fYSQLNmOeXhn6nYAwc7f/
 MKThSwFhlWogOTf0gKHEQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OIHbv3vXje8=:5g1Pr1QZWf8Hk3Wc7uQYrT
 R04Zbm6Zm8oC8biOkQQCBB+N50aZd6XYmzavzDnZjVasmBEWF8CsLXoAghlKkSC0EN1VeXGRU
 c2zfSPS+omXkupqHJwNDOOpOq9K+jZ939iDuuGUDfTgfvP2xzHfpAnFvMaTlM5o1R6/GSa32X
 RCWxO87D8PlBauYyLzSJsdiPZpFC8EsvAHeMKcoYHHAnFD1h8J6/fLsCrRcb1LK/mKlgt74+v
 sITZM8TiqrXbCX0u6H/46ux25qJolNOQSXIKdKzQyFNKPb4IFb/MP/mvhUpFWl+o4Z+TDfo6T
 /nyMF0HoDUWP4rNFJwAG/4ONI/9xw0PYCkEu1F0UnXyo3SkJv7CXGCHrAIkJGXG+y4Z6yHLLk
 w+V1NzTQqz0M6SuCvf9CoF9iyBpdRQHF77mi9KPaej5HHNC8ASIcVKd+vDSC0HDR4aJZ8UOHD
 ALr3cEwqsAx0hg3NJoNb1Ubfl4LqNHdVAyTMhZ8vhyWqPuh9DPocOS4MfDlGDfKL0OVA22Dpc
 yZAwwlNiSJymO88L8+gltO8rBiiqggwRWOyf/0fyO2J5pt1E3Uc9Fa5OSyWol2SUmXuwjKASc
 Wfw/PISWftRAGyOX2R3yvZ+RIn2evJ/Mi9ZAk8WiYG5PAWDIC81e/Ggg+6rX7NNg0DmoXUBn8
 y9zLDM2zEQEoYf0UnzujVkYFM8rLH+B+QBfqNJTvUZKslo83fzkIlvUorHSvHnW+S06XdYfYb
 kyHjI1DYrErBPlOELGHqcDnpFm0DFs8yOozyXyt/ePenPpPKfsEuo/QxbhOOdgEhJJOyZn+H4
 fU10AO0ochk/00XQ772owR3+jLZUvkyojJ8aY3C3nuVh3PkYUFT87nURc4f060qjTUlNpj/Bq
 MkphgRVYXQ6vVgj2XOzwUTSx5Z/fWD9uM1Bjbkilk1RgZQxqVfeRmr0wHXmZqSTbNBaUlAF0t
 pQO1+3Mj4aUMBvuWyIyFEzpy2HpVXDNnkt8h3cARVzltNAIR9b5cgrdy7epqa6TFp2GH4JcZY
 POyHktD9E31que8GrG/xnqmjycAP/uCilblpAsxOWXCqCdXEC3s03y47nf6xJlDL6xl+7I7+V
 1o4dpqxLAixzdESXJNzfgZTdjpsisNDuBVahb52mnqOHxrdbsGYdPbVOLZrC98xKm1ifwgrv/
 ybccmHym0dPfJnoBSZEScht94aSoQYarbh+N1UWN8QZrL5uxuSXtAlWvCGRXj2WmS7UjD7VFf
 RlKTLIj/wRqGZPED6v+aa58RIJ8XfdGZgdgchKQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_052242_780945_A6E75523 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (inguin[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/3/19 2:04 PM, Peter Rosin wrote:

> Sounds reasonable, and sorry for the breakage. However, perhaps a proper
> fixes tag (with the prescribed length of the commit hash) should be in
> there somewhere?

Sounds good, I will add one.


> Also, I think the same kind of change was made to the barebox bootloader
> at about the same time. Is there a fix for that queued up as well?

Sorry, I'm not familiar with Barebox. We use u-boot.

Regards,
Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
