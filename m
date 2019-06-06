Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0DE37B52
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hw5WPYDzPMQtxzILR+EzX/9iV9lFPHleVS3wBG+VGrE=; b=MVmFysfDC29nMB
	TUMT9gWG5/QSx4F8YTBQaGtR4i7NkIFDI4u7UfkcErHO/+d9Fm9YbcIkZ/m01sG6Ch4xgSxzPhRT/
	fqCU10fpMuVwOFPL/fk4v/GWO4IeZxIDQe73scGHlpaJdLnAm7jY3Kjus380/1I3lTNWm45tGKl5a
	93o0FjQTs65HkGXD2aysrV6BNiUbH0l/by9iP8GX/1EMwd1tHypy5Qywkn3trT2rX2yUZ2LfXy2by
	IqDKyTFudhiy1WrNDakWRBUt9k0uHEKVXrHL3VYe5Gd1Z3alK3pLZ0CE6G58Etr7wTTvdgru7iIWn
	xbUO0j9VtBKAoLIBfWYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwRY-0008Rv-UG; Thu, 06 Jun 2019 17:44:52 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwRS-0008RV-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:44:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6447B374;
 Thu,  6 Jun 2019 10:44:45 -0700 (PDT)
Received: from [10.1.197.21] (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4CCC93F690; Thu,  6 Jun 2019 10:44:43 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
To: Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Kees Cook <keescook@chromium.org>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
 <333eb6ba-ae20-6469-0daf-583557bd66a3@arm.com>
Message-ID: <bf75504e-127c-3617-2e72-7bf45d5357d0@arm.com>
Date: Thu, 6 Jun 2019 18:44:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <333eb6ba-ae20-6469-0daf-583557bd66a3@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_104446_051725_6519767F 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Diogo Sampaio <Diogo.Sampaio@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, nd <nd@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/05/2019 10:12, Ramana Radhakrishnan wrote:
> =

>>> =A0 - more testing
>>
>> Is PAC emulated in QEmu yet? (I assume I can't get real hardware to help
>> test this yet...)
> =

> AFAIK, yes qemu trunk should have this.

I've been testing on the ARM FastModels, but I tried out QEMU 4.0.0 and
it seems to support PAC with the "-cpu max" option.

Thanks,
Kristina

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
