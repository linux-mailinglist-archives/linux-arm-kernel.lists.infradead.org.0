Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CB723C5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaEov1hyk9CrwpZlZdFXc0u0qbor3ijLiRh+SbD3UvM=; b=VvSHL0ZTZpcM2B
	ZTpEm+jbKm3f+3SNO+eFgHFYIcDtJUK81MEP6IZAsxC19FAz1Seammh+KR6bbusBqMRofpvd7He+P
	RGMzjWzjCoqRMaCn6NNwmea1aBH3Hzy58Ju1OPZNOrMkOBl3PraPCfcGlxTiSM6i1jb7Vw9z30fZW
	BU+jNXfjvgKlP98hsDn/9GXAAEkHiTH56sBq7hPKH5JNc4o/3Y8F/SmZXiJi8piglQCrGm1rk2Zw5
	b6kQhF4by4TiC5xLP6g8I+QxnaMdMB6bAp5XAfXLgYZ1ZUaINHlXCffYB/3BeTzVsoqQmyFSoLrQM
	yHUmXdm29WVsIrpfbUdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkPB-0006bE-H9; Mon, 20 May 2019 15:40:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkP4-0006aj-FR
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:40:44 +0000
Received: by mail-pf1-x441.google.com with SMTP id u17so7413622pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 08:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k/heyaUqeKgmsqNyqFuRQhrCnWAaJChzuChioekfYFU=;
 b=szsaZEAWQZBAPa/oSIDZup6Sf3jSi3AJ76WcSsZC1BgEtPm2HRp1c+w0lJQChX3EX6
 hX/GoTqMK+0+zx/9R5rDkf5m5aZmhpybbpZJQBdSeK5uTi3+UvGjBlOQcsZMpnKl4AzR
 qlGDJn7Oq7xYDgi8LQsdENsNMpNdnWWnty6fDhrh/VjIO0o5tu81pgh8/DOF5kR34az6
 KABjDG9DI7NtDSB5JsYly4sD4iTg3dk/qU8HG67UhbEngTVIYwRYPstU4hFei2dlyvNx
 n7fhc7CgCLg7Z/rik+tGZirioJ5jwOUhd9dYcpPxgvLI1JGroSd3ozTGxA9XV5aVgnZs
 VIJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k/heyaUqeKgmsqNyqFuRQhrCnWAaJChzuChioekfYFU=;
 b=nNecGsLV5IH1wdg0YnsWU4X0Ok5Kv99yqWg1jHDNXjIEaZh0qNvGinsz6ZgxYVylr5
 FTLZvq4Jsbb0Ijen74DLrD6aKSa0SX1tUEgBF11qUPFTgEg3kVtRntze6gljADGkeK17
 xA7Vrz4/qEfOZGkLbtseU/sYs3KNREaSz1zq3CSqyn5EedVxvp/B/K0ldgijriqMtsWb
 bM9YUUCFliG9/M3oYjO/BFWpLF4EdSxp83+r2tqKW4XZl52OVdgos7N/zvjtfgLVe/hr
 fcnIhJgQImA6NID1jg7raBLUW0QUvXnXQZgIpywtvYi6ZP4f3W+iIsdfwdNwNbMyQ1rz
 Ez2g==
X-Gm-Message-State: APjAAAWcH+5mJYW3OF1lvgbDg7MHozupJ5O+pdq/BiWFt3g66E4aEKbq
 6705v4z7AOoK3v863b6hb3656A==
X-Google-Smtp-Source: APXvYqzB4o9I2xZFF8x25ug5HF4C3D7MauyyGIjq+J9XrCQDbuj+gG89I5cVtID1X4Jo1vMXmLyuqA==
X-Received: by 2002:aa7:9a8c:: with SMTP id w12mr80346129pfi.187.1558366841456; 
 Mon, 20 May 2019 08:40:41 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a69sm47830937pfa.81.2019.05.20.08.40.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 08:40:40 -0700 (PDT)
Date: Mon, 20 May 2019 08:41:08 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 2/8] net: qualcomm: rmnet: kill RMNET_MAP_GET_*()
 accessor macros
Message-ID: <20190520154108.GQ2085@tuxbook-pro>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-3-elder@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520135354.18628-3-elder@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_084042_530459_C2C60824 
X-CRM114-Status: GOOD (  24.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: syadagir@codeaurora.org, ejcaruso@google.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, david.brown@linaro.org,
 agross@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, subashab@codeaurora.org, davem@davemloft.net,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 20 May 06:53 PDT 2019, Alex Elder wrote:

> The following macros, defined in "rmnet_map.h", assume a socket
> buffer is provided as an argument without any real indication this
> is the case.
>     RMNET_MAP_GET_MUX_ID()
>     RMNET_MAP_GET_CD_BIT()
>     RMNET_MAP_GET_PAD()
>     RMNET_MAP_GET_CMD_START()
>     RMNET_MAP_GET_LENGTH()
> What they hide is pretty trivial accessing of fields in a structure,
> and it's much clearer to see this if we do these accesses directly.
> 
> So rather than using these accessor macros, assign a local
> variable of the map header pointer type to the socket buffer data
> pointer, and derereference that pointer variable.
> 
> Use the network byte order macros (e.g., ntohs()), not the Linux
> byte order functions (e.g. be_to_cpu16()) to convert the big-endian
> packet length field, to match the convention used elswhere in the
> driver.
> 
> There's no need to byte swap 0; it's all zeros irrespective of
> endianness.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c |  9 +++++----
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h      | 12 ------------
>  .../net/ethernet/qualcomm/rmnet/rmnet_map_command.c  | 11 ++++++++---
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c |  4 ++--
>  4 files changed, 15 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
> index 11167abe5934..4c1b62b72504 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
> @@ -65,20 +65,21 @@ static void
>  __rmnet_map_ingress_handler(struct sk_buff *skb,
>  			    struct rmnet_port *port)
>  {
> +	struct rmnet_map_header *map_header = (void *)skb->data;
>  	struct rmnet_endpoint *ep;
>  	u16 len, pad;
>  	u8 mux_id;
>  
> -	if (RMNET_MAP_GET_CD_BIT(skb)) {
> +	if (map_header->cd_bit) {
>  		if (port->data_format & RMNET_FLAGS_INGRESS_MAP_COMMANDS)
>  			return rmnet_map_command(skb, port);
>  
>  		goto free_skb;
>  	}
>  
> -	mux_id = RMNET_MAP_GET_MUX_ID(skb);
> -	pad = RMNET_MAP_GET_PAD(skb);
> -	len = RMNET_MAP_GET_LENGTH(skb) - pad;
> +	mux_id = map_header->mux_id;
> +	pad = map_header->pad_len;
> +	len = ntohs(map_header->pkt_len) - pad;
>  
>  	if (mux_id >= RMNET_MAX_LOGICAL_EP)
>  		goto free_skb;
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> index b1ae9499c0b2..a30a7b405a11 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> @@ -63,18 +63,6 @@ struct rmnet_map_ul_csum_header {
>  	u16 csum_enabled:1;
>  } __aligned(1);
>  
> -#define RMNET_MAP_GET_MUX_ID(Y) (((struct rmnet_map_header *) \
> -				 (Y)->data)->mux_id)
> -#define RMNET_MAP_GET_CD_BIT(Y) (((struct rmnet_map_header *) \
> -				(Y)->data)->cd_bit)
> -#define RMNET_MAP_GET_PAD(Y) (((struct rmnet_map_header *) \
> -				(Y)->data)->pad_len)
> -#define RMNET_MAP_GET_CMD_START(Y) ((struct rmnet_map_control_command *) \
> -				    ((Y)->data + \
> -				      sizeof(struct rmnet_map_header)))
> -#define RMNET_MAP_GET_LENGTH(Y) (ntohs(((struct rmnet_map_header *) \
> -					(Y)->data)->pkt_len))
> -
>  #define RMNET_MAP_COMMAND_REQUEST     0
>  #define RMNET_MAP_COMMAND_ACK         1
>  #define RMNET_MAP_COMMAND_UNSUPPORTED 2
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c
> index f6cf59aee212..f675f47c3495 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c
> @@ -20,12 +20,13 @@ static u8 rmnet_map_do_flow_control(struct sk_buff *skb,
>  				    struct rmnet_port *port,
>  				    int enable)
>  {
> +	struct rmnet_map_header *map_header = (void *)skb->data;
>  	struct rmnet_endpoint *ep;
>  	struct net_device *vnd;
>  	u8 mux_id;
>  	int r;
>  
> -	mux_id = RMNET_MAP_GET_MUX_ID(skb);
> +	mux_id = map_header->mux_id;
>  
>  	if (mux_id >= RMNET_MAX_LOGICAL_EP) {
>  		kfree_skb(skb);
> @@ -57,6 +58,7 @@ static void rmnet_map_send_ack(struct sk_buff *skb,
>  			       unsigned char type,
>  			       struct rmnet_port *port)
>  {
> +	struct rmnet_map_header *map_header = (void *)skb->data;
>  	struct rmnet_map_control_command *cmd;
>  	struct net_device *dev = skb->dev;
>  
> @@ -66,7 +68,8 @@ static void rmnet_map_send_ack(struct sk_buff *skb,
>  
>  	skb->protocol = htons(ETH_P_MAP);
>  
> -	cmd = RMNET_MAP_GET_CMD_START(skb);
> +	/* Command data immediately follows the header */
> +	cmd = (struct rmnet_map_control_command *)(map_header + 1);
>  	cmd->cmd_type = type & 0x03;
>  
>  	netif_tx_lock(dev);
> @@ -79,11 +82,13 @@ static void rmnet_map_send_ack(struct sk_buff *skb,
>   */
>  void rmnet_map_command(struct sk_buff *skb, struct rmnet_port *port)
>  {
> +	struct rmnet_map_header *map_header = (void *)skb->data;
>  	struct rmnet_map_control_command *cmd;
>  	unsigned char command_name;
>  	unsigned char rc = 0;
>  
> -	cmd = RMNET_MAP_GET_CMD_START(skb);
> +	/* Command data immediately follows the header */
> +	cmd = (struct rmnet_map_control_command *)(map_header + 1);
>  	command_name = cmd->command_name;
>  
>  	switch (command_name) {
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> index 57a9c314a665..498f20ba1826 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> @@ -323,7 +323,7 @@ struct sk_buff *rmnet_map_deaggregate(struct sk_buff *skb,
>  		return NULL;
>  
>  	maph = (struct rmnet_map_header *)skb->data;
> -	packet_len = ntohs(maph->pkt_len) + sizeof(struct rmnet_map_header);
> +	packet_len = ntohs(maph->pkt_len) + sizeof(*maph);
>  
>  	if (port->data_format & RMNET_FLAGS_INGRESS_MAP_CKSUMV4)
>  		packet_len += sizeof(struct rmnet_map_dl_csum_trailer);
> @@ -332,7 +332,7 @@ struct sk_buff *rmnet_map_deaggregate(struct sk_buff *skb,
>  		return NULL;
>  
>  	/* Some hardware can send us empty frames. Catch them */
> -	if (ntohs(maph->pkt_len) == 0)
> +	if (!maph->pkt_len)
>  		return NULL;
>  
>  	skbn = alloc_skb(packet_len + RMNET_MAP_DEAGGR_SPACING, GFP_ATOMIC);
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
