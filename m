Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C5ADED65
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvBxBN86hfK+Sa6NcsFOJR2ZrsRg36iughS5wQMI3yA=; b=atHzQRoI9oeXYS
	LDga4jGlPg4EcfLSz3MT8vPqqfRBf8TnChpr7rUEMnhMxONzJstKuq7eFytQwOmNlkbfjIa8duXcV
	V4LlESRj6Wxt9noN9TwPhhjOrEjoFBURM1y7Uxydi0WXeZinn+YIoPTcxni5xC9xl7qAVBO78LIdk
	zxstHgcSuuJDJNTvWwf1CpHuGpiKvNcydPPnDrSKzddQXW0UwRwPauSGoBbRxD0avnCFeKODqASM6
	NPAu1L9tGUTxG+HTKQbJtYkmyr7WfKKhLOd3TqTpL2+ne8kPuXZzgX85FgZw8190zC9uTpGhSt1hF
	eOa72BpW2dDI8NyviImg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXcW-0006Gf-HJ; Mon, 21 Oct 2019 13:21:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXcN-0006FT-4h
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 13:21:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571664055;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B4XWknMJuOuh6KIQuH7ppQMvEXTX2kO1s3vMco8Hg40=;
 b=XmVcOWgh9FUw9VSs335hS4IRfbXv5sFCP7+vv+4XwA6myZ+A5Ix+NgAk96EmSsjPWNOWr9
 iYas5cCR4Q71PZYZZzhNaETjwVnY+YUPADcK6UUtG4KhxfKl1E/fRDZI7NM2a/ITkwgkq/
 1CfM2Q4nvOGTCWIJjAhRL3ej2/ogr4s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-pDIa5xMtMX6HhtaRvjFBrQ-1; Mon, 21 Oct 2019 09:20:50 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F888800D41;
 Mon, 21 Oct 2019 13:20:48 +0000 (UTC)
Received: from treble (ovpn-123-96.rdu2.redhat.com [10.10.123.96])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 47C265B69A;
 Mon, 21 Oct 2019 13:20:46 +0000 (UTC)
Date: Mon, 21 Oct 2019 08:20:44 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v8 0/5] arm64: ftrace with regs
Message-ID: <20191021132044.zkzclqtrexryyybl@treble>
References: <0f8d2e77-7e51-fba8-b179-102318d9ff84@arm.com>
 <20190311114945.GA5625@lst.de>
 <20190408153628.GL6139@lakrids.cambridge.arm.com>
 <20190409175238.GE9255@fuggles.cambridge.arm.com>
 <CAB=otbRXuDHSmh9NrGYoep=hxOKkXVsy6R84ACZ9xELwNr=4AA@mail.gmail.com>
 <20190724161500.GG2624@lakrids.cambridge.arm.com>
 <nycvar.YFH.7.76.1910161341520.13160@cbobk.fhfr.pm>
 <20191016175841.GF46264@lakrids.cambridge.arm.com>
 <20191018174100.GC18838@lakrids.cambridge.arm.com>
 <20191019130135.10de9324@blackhole.lan>
MIME-Version: 1.0
In-Reply-To: <20191019130135.10de9324@blackhole.lan>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: pDIa5xMtMX6HhtaRvjFBrQ-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_062103_266715_AFCB79FB 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jiri Kosina <jikos@kernel.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ingo Molnar <mingo@redhat.com>,
 Ruslan Bilovol <ruslan.bilovol@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, live-patching@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 01:01:35PM +0200, Torsten Duwe wrote:
> All calls going _out_ from the KLP module are newly generated, as part
> of the KLP module building process, and are thus aware of them being
> "extern" -- a PLT entry should be generated and accounted for in the
> KLP module.

Hm... for kpatch-build I assume we may need a GCC plugin to convert
local calls to global somehow?

-- 
Josh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
