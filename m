Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153811D1773
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kej9sP1npcFwNjE+I5U+lHGsQLTx/mFMralQMRkWpz0=; b=NGSODge1tj9w9p
	EDtcFdir6ZQDhIPgKkW9AJjKphA8KBxHkQc+voDgfX+9AZPPmX1Dx6nxkZV/1w00N9xqwkWvi537g
	tTKk9aR381+jkdJTC4+eX3smWp59qyR2cwWZhw1w0tOT3ajYuicxSYLw7EuQ0+UwrMDgQr/SNk6uv
	02SWhXdLnoNBzvFDVQNqydQviZOYiKSp/QuXFGaX+50pcXR59WHMNKFlBLoV+WokizhxfBWYAZpQw
	8imga07HhS/cjgvHxD1rl2jwjuIZPZ9c85q+a3KsFvRd6XCJAQu9zQtzxJo7PbfFw/+Je5Bthrkjn
	DSCTCMMWZ8/jmvWcPUXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsGH-00040q-S0; Wed, 13 May 2020 14:21:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsFm-0003N1-Ml
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:21:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 56F3B2A242D
Date: Wed, 13 May 2020 16:20:13 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200513142013.xzz2dlzt4hptzyxf@rcn-XPS-13-9360>
Mail-Followup-To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, robh+dt@kernel.org,
 kernel@collabora.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
 <20200506155320.GC15206@pendragon.ideasonboard.com>
 <20200513110957.dgb3axle24pmqp3a@rcn-XPS-13-9360>
 <20200513140832.GI5945@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513140832.GI5945@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_072058_881250_40A16D4D 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGF1cmVudCwKCk9uIG1pw6kgMTMtMDUtMjAyMCAxNzowODozMiwgTGF1cmVudCBQaW5jaGFy
dCB3cm90ZToKPiBUaGUgZHJpdmVyIGRvZXNuJ3QgYXBwbHkgYW55IHNldHRpbmcgdG8gdGhlIGRl
dmljZSA6LSkgVGhlIHRpLGRlc2tldwo+IHByb3BlcnR5IGlzIG1lYW50IHRvIHJlcG9ydCB0aGUg
ZGVza2V3IHNldHRpbmdzIHNlbGVjdGVkIGJ5IHRoZSBjaGlwJ3MKPiBjb25maWd1cmF0aW9uIHBp
bnMsIG5vdCB0byBzZXQgYSB2YWx1ZSB0byBiZSBwcm9ncmFtbWVkIHRvIHRoZSBkZXZpY2UuCgpP
aCwgSSBzZWUsIHRoYW5rcyBmb3IgY2xhcmlmeWluZyBpdC4KCj4gV291bGQgeW91IGxpa2UgdG8g
c2VuZCBhIHBhdGNoLCBvciBzaG91bGQgSSBkbyBzbyA/CgpJIGNhbiB0YWtlIGNhcmUgb2YgaXQs
IEknbGwgdHJ5IHRvIGhhdmUgYSBuZXcgc2VyaWVzIGJ5IHRvbW9ycm93LgoKQ2hlZXJzLApSaWNh
cmRvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
