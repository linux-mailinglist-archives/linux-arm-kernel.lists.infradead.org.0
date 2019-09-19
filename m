Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875D0B7DFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wBLHHoG3JbDljzcL1zVbsnRrePG+P/ymIKKDJpBOsVU=; b=uEq6Y/ohIXHt+6G9tRYqX6LkT
	Srl+KBnYCXhvoBMrTWFpfuJ9QwWuVOf3HqYPxh9eJUxsDxRCAYc72RYZ5NStH9aa2iX+iF2nzxGEf
	db9iR76Y25IjjxHEs7abl2lAwYCk99Fb19TZMa3tZ4sEbJXVNZLexgbb5YlOFfB6+D2wkQnVOeSWb
	hWohI7uWREot6wXobXN1A2L8kN0EuY5efwHBRXxdeWxQuBb0EeTCUdEldnVcCG+kQQW2i4E7sUbfG
	wl0UnBUBUOzXSjOi+W4GK70UlSku4OKPzhwkxmYUGq9jwBN5FypXQzzfWy0wUQg47l4OT1/7f/mxH
	CGy+cm0+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyE8-0001hl-Ko; Thu, 19 Sep 2019 15:20:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyDn-0001g2-Vu
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:19:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jlu@pengutronix.de>)
 id 1iAyDd-0003JN-7Q; Thu, 19 Sep 2019 17:19:41 +0200
Received: from localhost ([127.0.0.1])
 by ptx.hi.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <jlu@pengutronix.de>)
 id 1iAyDc-00018D-7s; Thu, 19 Sep 2019 17:19:40 +0200
Message-ID: <ad87f175496358adb825240f1de609318ed8204c.camel@pengutronix.de>
Subject: Re: [PATCH v4 2/3] dmaengine: imx-sdma: fix dma freezes
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, 
 linux-kernel@vger.kernel.org
Date: Thu, 19 Sep 2019 17:19:39 +0200
In-Reply-To: <20190919142942.12469-3-philipp.puschmann@emlix.com>
References: <20190919142942.12469-1-philipp.puschmann@emlix.com>
 <20190919142942.12469-3-philipp.puschmann@emlix.com>
Content-Type: multipart/mixed; boundary="=-sqfX9QZyaTnBJ7ZxOgmw"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: jlu@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_081952_185619_AAA095C0 
X-CRM114-Status: GOOD (  30.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: fugang.duan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 vkoul@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dan.j.williams@intel.com, yibin.gong@nxp.com, festevam@gmail.com,
 dmaengine@vger.kernel.or, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--=-sqfX9QZyaTnBJ7ZxOgmw
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Philipp,

see below...

On Thu, 2019-09-19 at 16:29 +0200, Philipp Puschmann wrote:
> For some years and since many kernel versions there are reports that the
> RX UART SDMA channel stops working at some point. The workaround was to
> disable DMA for RX. This commit tries to fix the problem itself.
> 
> Due to its license i wasn't able to debug the sdma script itself but it
> somehow leads to blocking the scheduling of the channel script when a
> running sdma script does not find any free descriptor in the ring to put
> its data into.
> 
> If we detect such a potential case we manually restart the channel.
> 
> As sdmac->desc is constant we can move desc out of the loop.
> 
> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> 
> Changelog v4:
>  - fixed the fixes tag
>  
> Changelog v3:
>  - use correct dma_wmb() instead of dma_wb()
>  - add fixes tag
>  
> Changelog v2:
>  - clarify comment and commit description
> 
>  drivers/dma/imx-sdma.c | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index e029a2443cfc..a32b5962630e 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -775,21 +775,23 @@ static void sdma_start_desc(struct sdma_channel *sdmac)
>  static void sdma_update_channel_loop(struct sdma_channel *sdmac)
>  {
>  	struct sdma_buffer_descriptor *bd;
> -	int error = 0;
> -	enum dma_status	old_status = sdmac->status;
> +	struct sdma_desc *desc = sdmac->desc;
> +	int error = 0, cnt = 0;
> +	enum dma_status old_status = sdmac->status;
>  
>  	/*
>  	 * loop mode. Iterate over descriptors, re-setup them and
>  	 * call callback function.
>  	 */
> -	while (sdmac->desc) {
> -		struct sdma_desc *desc = sdmac->desc;
> +	while (desc) {
>  
>  		bd = &desc->bd[desc->buf_tail];
>  
>  		if (bd->mode.status & BD_DONE)
>  			break;
>  
> +		cnt++;
> +
>  		if (bd->mode.status & BD_RROR) {
>  			bd->mode.status &= ~BD_RROR;
>  			sdmac->status = DMA_ERROR;
> @@ -822,6 +824,17 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
>  		if (error)
>  			sdmac->status = old_status;
>  	}
> +
> +	/* In some situations it may happen that the sdma does not found any
                                                          ^ hasn't
> +	 * usable descriptor in the ring to put data into. The channel is
> +	 * stopped then. While there is no specific error condition we can
> +	 * check for, a necessary condition is that all available buffers for
> +	 * the current channel have been written to by the sdma script. In
> +	 * this case and after we have made the buffers available again,
> +	 * we restart the channel.
> +	 */

Are you sure we can't miss cases where we only had to make some buffers
available again, but the SDMA already ran out of buffers before?

A while ago, I was debugging a similar issue triggered by receiving
data with a wrong baud rate, which leads to all descriptors being
marked with the error flag very quickly (and the SDMA stalling).
I noticed that you can check if the channel is still running by
checking the SDMA_H_STATSTOP register & BIT(sdmac->channel).

I also added a flag for the sdmac->flags field to allow stopping the
channel from the callback (otherwise it would enable the channel
again).

Attached is my current version of that patch for reference.

> +	if (cnt >= desc->num_bd)
> +		sdma_enable_channel(sdmac->sdma, sdmac->channel);
>  }
>  
>  static void mxc_sdma_handle_channel_normal(struct sdma_channel *data)

--=-sqfX9QZyaTnBJ7ZxOgmw
Content-Disposition: attachment;
	filename*0=0001-dmaengine-imx-sdma-restart-stopped-cyclic-transfers.patc;
	filename*1=h
Content-Type: text/x-patch;
	name="0001-dmaengine-imx-sdma-restart-stopped-cyclic-transfers.patch";
	charset="UTF-8"
Content-Transfer-Encoding: base64

RnJvbSA3M2Q3ZGNmODRkYWM1NTEyYzUwNDQ4ZmY2YWRmMDg0ZjFhOWJkNmY5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKYW4gTHVlYmJlIDxqbHVAcGVuZ3V0cm9uaXguZGU+CkRhdGU6
IFR1ZSwgMTYgQXByIDIwMTkgMTg6MzU6MDQgKzAyMDAKU3ViamVjdDogW1BBVENIXSBkbWFlbmdp
bmU6IGlteC1zZG1hOiByZXN0YXJ0IHN0b3BwZWQgY3ljbGljIHRyYW5zZmVycwoKRm9yIGN5Y2xp
YyBETUEgdHJhbnNmZXJzLCB3ZSBoYXZlIGF0IGxlYXN0IHR3byBjYXNlcyB3aGVyZSB3ZSBjYW4g
cnVuCm91dCBkZXNjcmlwdG9ycyBhdmFpbGFibGUgdG8gdGhlIGVuZ2luZToKLSBJbnRlcnJ1cHMg
YXJlIGRpc2FibGVkIGZvciB0b28gbG9uZyBhbmQgYWxsIGJ1ZmZlcnMgYSBmaWxsZWQgd2l0aAog
IGRhdGEuCi0gRE1BIGVycm9ycyAoc3VjaCBhcyBnZW5lcmF0ZWQgYnkgYmF1ZCByYXRlIG1pc21h
dGNoIHdpdGggaW14LXVhcnQpIHVzZQogIHVwIGFsbCBkZXNjcmlwdG9ycyBiZWZvcmUgd2UgY2Fu
IHJlYWN0LgoKSW4gdGhpcyBjYXNlLCBTRE1BIHN0b3BzIHRoZSBjaGFubmVsIGFuZCBubyBmdXJ0
aGVyIHRyYW5zZmVycyBhcmUgZG9uZQp1bnRpbCB0aGUgcmVzcGVjdGl2ZSBjaGFubmVsIGlzIGRp
c2FibGVkIGFuZCByZS1lbmFibGVkLgoKVGhlIGJlc3Qgd2UgY2FuIGRvIGluIHRoaXMgY2FzZSBp
cyB0byBjaGVjayBpZiB0aGUgdHJhbnNmZXIgc2hvdWxkIHN0aWxsCmJlIGVuYWJsZWQgKGl0IGNv
dWxkIGhhdmUgYmVlbiBkaXNhYmxlZCBkdXJpbmcKc2RtYV91cGRhdGVfY2hhbm5lbF9sb29wKSwg
YnV0IHRoZSBTRE1BIGNoYW5uZWwgaXMgc3RvcHBlZC4gSW4gdGhpcwpjYXNlLCB3ZSByZS1zdGFy
dCB0aGUgY2hhbm5lbC4KClRvIGF2b2lkIHJhY2luZyB3aXRoIGNoYW5nZXMgdG8gdGhlIHNkbWFj
LT5zdGF0dXMgZmllbGQgKHdoaWNoIGlzCndyaXR0ZW4gYW5kIHJlc3RvcmVkIGluIHNkbWFfdXBk
YXRlX2NoYW5uZWxfbG9vcCksIHdlIGFkZCBhIG5ldyBmbGFnCihJTVhfRE1BX0FDVElWRSkgdG8g
aW5kaWNhdGUgdGhhdCB0aGUgY2hhbm5lbCBpcyBjdXJyZW50bHkgYWN0aXZlLgoKU2lnbmVkLW9m
Zi1ieTogSmFuIEx1ZWJiZSA8amx1QHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvZG1hL2lt
eC1zZG1hLmMgfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL2lteC1zZG1hLmMgYi9kcml2ZXJzL2RtYS9p
bXgtc2RtYS5jCmluZGV4IDU4ZmE4NTIwODkyYi4uODc3NDI1OWFmMjRjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2RtYS9pbXgtc2RtYS5jCisrKyBiL2RyaXZlcnMvZG1hL2lteC1zZG1hLmMKQEAgLTM4
Myw2ICszODMsNyBAQCBzdHJ1Y3Qgc2RtYV9jaGFubmVsIHsKIH07CiAKICNkZWZpbmUgSU1YX0RN
QV9TR19MT09QCQlCSVQoMCkKKyNkZWZpbmUgSU1YX0RNQV9BQ1RJVkUJCUJJVCgxKQogCiAjZGVm
aW5lIE1BWF9ETUFfQ0hBTk5FTFMgMzIKICNkZWZpbmUgTVhDX1NETUFfREVGQVVMVF9QUklPUklU
WSAxCkBAIC02NTgsNiArNjU5LDkgQEAgc3RhdGljIGludCBzZG1hX2NvbmZpZ19vd25lcnNoaXAo
c3RydWN0IHNkbWFfY2hhbm5lbCAqc2RtYWMsCiAKIHN0YXRpYyB2b2lkIHNkbWFfZW5hYmxlX2No
YW5uZWwoc3RydWN0IHNkbWFfZW5naW5lICpzZG1hLCBpbnQgY2hhbm5lbCkKIHsKKwlzdHJ1Y3Qg
c2RtYV9jaGFubmVsICpzZG1hYyA9ICZzZG1hLT5jaGFubmVsW2NoYW5uZWxdOworCisJc2RtYWMt
PmZsYWdzIHw9IElNWF9ETUFfQUNUSVZFOwogCXdyaXRlbChCSVQoY2hhbm5lbCksIHNkbWEtPnJl
Z3MgKyBTRE1BX0hfU1RBUlQpOwogfQogCkBAIC03NzQsNiArNzc4LDcgQEAgc3RhdGljIHZvaWQg
c2RtYV9zdGFydF9kZXNjKHN0cnVjdCBzZG1hX2NoYW5uZWwgKnNkbWFjKQogCiBzdGF0aWMgdm9p
ZCBzZG1hX3VwZGF0ZV9jaGFubmVsX2xvb3Aoc3RydWN0IHNkbWFfY2hhbm5lbCAqc2RtYWMpCiB7
CisJc3RydWN0IHNkbWFfZW5naW5lICpzZG1hID0gc2RtYWMtPnNkbWE7CiAJc3RydWN0IHNkbWFf
YnVmZmVyX2Rlc2NyaXB0b3IgKmJkOwogCWludCBlcnJvciA9IDA7CiAJZW51bSBkbWFfc3RhdHVz
CW9sZF9zdGF0dXMgPSBzZG1hYy0+c3RhdHVzOwpAQCAtODIwLDYgKzgyNSwxMyBAQCBzdGF0aWMg
dm9pZCBzZG1hX3VwZGF0ZV9jaGFubmVsX2xvb3Aoc3RydWN0IHNkbWFfY2hhbm5lbCAqc2RtYWMp
CiAJCWlmIChlcnJvcikKIAkJCXNkbWFjLT5zdGF0dXMgPSBvbGRfc3RhdHVzOwogCX0KKworCWlm
ICgoc2RtYWMtPmZsYWdzICYgSU1YX0RNQV9BQ1RJVkUpICYmCisJICAgICEocmVhZGxfcmVsYXhl
ZChzZG1hLT5yZWdzICsgU0RNQV9IX1NUQVRTVE9QKSAmIEJJVChzZG1hYy0+Y2hhbm5lbCkpKSB7
CisJCWRldl9lcnJfcmF0ZWxpbWl0ZWQoc2RtYS0+ZGV2LCAiU0RNQSBjaGFubmVsICVkOiBjeWNs
aWMgdHJhbnNmZXIgZGlzYWJsZWQgYnkgSFcsIHJlZW5hYmxpbmdcbiIsCisJCQkJc2RtYWMtPmNo
YW5uZWwpOworCQl3cml0ZWwoQklUKHNkbWFjLT5jaGFubmVsKSwgc2RtYS0+cmVncyArIFNETUFf
SF9TVEFSVCk7CisJfTsKIH0KIAogc3RhdGljIHZvaWQgbXhjX3NkbWFfaGFuZGxlX2NoYW5uZWxf
bm9ybWFsKHN0cnVjdCBzZG1hX2NoYW5uZWwgKmRhdGEpCkBAIC0xMDQ5LDYgKzEwNjEsNyBAQCBz
dGF0aWMgaW50IHNkbWFfZGlzYWJsZV9jaGFubmVsKHN0cnVjdCBkbWFfY2hhbiAqY2hhbikKIAlz
dHJ1Y3Qgc2RtYV9lbmdpbmUgKnNkbWEgPSBzZG1hYy0+c2RtYTsKIAlpbnQgY2hhbm5lbCA9IHNk
bWFjLT5jaGFubmVsOwogCisJc2RtYWMtPmZsYWdzICY9IH5JTVhfRE1BX0FDVElWRTsKIAl3cml0
ZWxfcmVsYXhlZChCSVQoY2hhbm5lbCksIHNkbWEtPnJlZ3MgKyBTRE1BX0hfU1RBVFNUT1ApOwog
CXNkbWFjLT5zdGF0dXMgPSBETUFfRVJST1I7CiAKLS0gCjIuMjMuMAoK


--=-sqfX9QZyaTnBJ7ZxOgmw
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--=-sqfX9QZyaTnBJ7ZxOgmw--


