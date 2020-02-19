Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F7D1642D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmZvB1JQlyfUSHL27CwpbpLd+nTFwpo8t2H082jRWKc=; b=dvz9wJljJCPTvV
	qzViEbTjzD/XMu6EWdjgJP3efBZMwa5vlxSc6xj+fisgCDtxqOvIJW5LUb6vT4L+ovC46z8pMlJE0
	AbFQhK9thbFdTOWOmTRfY4qnWFbk5AVonRx0gnN0wYspVNY3xoOMEt5kitKFij66CFA6g4UMl1YHi
	cRQtJz6riszxeoY+ODpLGu0ft7X86qI8FVkC4pnQr4zcFgEgMhxunnniQ3xSjy8S9fQQPp/9mqvZ1
	EbZoeERsMh/i/OCdakcmWnKQAoOoCBN3PYLSZUdNdZTR8cvVPAlw48/9HuJcUrt8N4/Mr+rt3IPSl
	jxYphnRm79d1vhvfwYgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4N6i-0008Ge-Cf; Wed, 19 Feb 2020 11:01:32 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4N6Z-0008Fb-Ng
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1582110081;
 s=strato-dkim-0002; d=fpond.eu;
 h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=6T71QD2Vo8dmsgSNbE8j1x5equ3md8IsMMhzsthbYfQ=;
 b=DfiMSUjXW5icEJ1yGH00bnbbA6TQFZaT8zWofZJEPCOqJbonL8ObPbOgtc2C7tkjM5
 XOT6MK+gXmsl+LqoHaRv5ArtQyQNlmkIRU+XY4MKS9Btc2sA2SRQfl8y/Cq9QnZ7ISjU
 Q+Qlq5SqgfuKLHXRq2dr0s5hxr7pRl3Bu4n6ae2VIU4fupOFSDAcUAwFHG/5pwAPjrAc
 UrRPB1XWQBkjZKdvmVzEPBX0+4iuKgOg+CNZXiZ4LirqoVRETFjHNAAqtbX/tnr7v8D2
 rSicVx0+gb4MBKZMt6rELAs2A0Zx8ovjRt8HkkO6K0HENO5NUnoO9fwPGvVpJM5QHPxF
 ITWg==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73amq+g13rqGzvv3qxio1R8fCv/x64iFM="
X-RZG-CLASS-ID: mo00
Received: from oxapp06-03.back.ox.d0m.de by smtp-ox.front (RZmta 46.1.12 AUTH)
 with ESMTPSA id L09b9cw1JB1L63F
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 19 Feb 2020 12:01:21 +0100 (CET)
Date: Wed, 19 Feb 2020 12:01:21 +0100 (CET)
From: Ulrich Hecht <uli@fpond.eu>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Message-ID: <1867901409.273361.1582110081464@webmail.strato.com>
In-Reply-To: <20200218133019.22299-5-geert+renesas@glider.be>
References: <20200218133019.22299-1-geert+renesas@glider.be>
 <20200218133019.22299-5-geert+renesas@glider.be>
Subject: Re: [PATCH v2 4/4] arm64: dts: renesas: rzg2: Add reset control
 properties for display
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.1-Rev26
X-Originating-Client: open-xchange-appsuite
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_030123_914645_B78D57A7 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On February 18, 2020 at 2:30 PM Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> 
> 
> Add reset control properties to the device nodes for the Display Units
> on all supported RZ/G2 SoCs.  Note that on these SoCs, there is only a
> single reset for each pair of DU channels.
> 
> Join the clocks lines while at it, to increase uniformity.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

FTR: I can't review this one, I don't have the datasheet.

CU
Uli

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
