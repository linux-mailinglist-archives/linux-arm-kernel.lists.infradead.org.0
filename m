Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F86B5799
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 23:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8gCaNFVY0LyIuRAvo5xhg128BHemJtzYkdazo2VR7g=; b=epdgS3lD4G3Cal
	45w3nzwd6sADO9t1rfdtX2C2VrfXorUFR4+LHRJGHFTB6g0VWWPkNgIP8oW6bUzoAZ+QdNmZS1b1/
	3mDo1MKL7Cprh4lnpTbU1+yeoiFeYmURAGu4/yNfQz7J9JF1kN+OlLxmGSnhcyts2dmtgWUQ1ko6r
	FD4EvFciO/TQHUrHy34AebSnhjQZp8Asa8OGNs07MLqjklNObDb3wjJmElmte3whhK1xDSv0LFVnb
	CdnXMCQ3J8pWbXoYMyND/tX6ki0YaaWVlu+Yb8fCuaNaJ5mSuRr8yBXinB1xGdlLZDONHjUFNhRGp
	VhT+sc8RNKujMw+boEeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAL44-0005JJ-QT; Tue, 17 Sep 2019 21:31:12 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAL3n-0005Hs-HV
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 21:30:57 +0000
Received: by mail-oi1-x241.google.com with SMTP id t84so4175371oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 14:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ESCnXX2tcIZXxoYYdwBnYQ13kyLGDQXAfzDyU1IsljM=;
 b=jUgafeXoQWRROVQcTu6YfyeHgWxQgQnh4jo0vXJb9gmwfB60c9yL42Xud+pRnhazvu
 I55/SWoMFVopXjb7HLBe3ZwDp8YJ8AIZ8yE+MZ1ol1jCwWnIpfYZUGgVJMSnV8dTUt6g
 Fj+f3RqGjAClmuMaYSKTGHkK+kbzWWV2PGu8pnhEDzRe1H1j/2nUdgWnUmqKQJs9XJhD
 bcgWdPhYUHXwS43uDaRjRrlqwvcEMFzpAIgQXR+SQCsx7w3nXgWKc6kAeP7uC4P5GOpV
 geTEa7Nd78q01D+rHdE0lfUUKO0VvNzXAoY9/ESlMRu9nFZIkRllJNqARaqGkFjsJcK8
 RCrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ESCnXX2tcIZXxoYYdwBnYQ13kyLGDQXAfzDyU1IsljM=;
 b=UzMsr3kXspUtK/1G7cVda9ErLGKKwHEoOuDZyy3Zd8G3FIrVyknEIEQDwipwCHAzBF
 CzuuPetN8jGwTcJQRt18ycULQY4layNQjyhYf2rXxamqcstkm/Nf3EKNF50GE0QM22u9
 voN721FGk9KpKqBOEw9wLQenWw/IWmhZJG+Irgz2cbt5DE7kcVFLWEcIYEoXyiaYpK+1
 nmz7z4fje9Gkw+xoEukGvmhtgNgUkrmGqsLCB47H8JoEv57cIiC+/TP31krzjjn8LkcX
 aiETEXGXPCP7mruZ39/wTuDtTVOfUEVSzdowRIoBcFD8/f/muSCQfDar5mO+F0NiHNsy
 p98g==
X-Gm-Message-State: APjAAAVJknQeU79dnPQTLAwqeKIV8YI3EIvKjedzEhDbHwLHwDxp03wi
 naxvaQToakgoz9YzMa0O+TiRwdCDDyinge+wTH6QJg==
X-Google-Smtp-Source: APXvYqwxm+0NJ68SJt1aKiZMUXpTcHLshnMGNY9q+/BgS9qyQqvS1IrxODCZyEWbmarv3+IaDknKyiL8F7FGSmCNufY=
X-Received: by 2002:aca:ed52:: with SMTP id l79mr129659oih.47.1568755849487;
 Tue, 17 Sep 2019 14:30:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-6-cyphar@cyphar.com>
In-Reply-To: <20190904201933.10736-6-cyphar@cyphar.com>
From: Jann Horn <jannh@google.com>
Date: Tue, 17 Sep 2019 23:30:23 +0200
Message-ID: <CAG48ez1_64249RdX6Nj_32YS+jhuXZBAd_ZL9ozggbSQy+cc-A@mail.gmail.com>
Subject: Re: [PATCH v12 05/12] namei: obey trailing magic-link DAC permissions
To: Aleksa Sarai <cyphar@cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_143055_609263_20056D14 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Containers <containers@lists.linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 10:21 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
> The ability for userspace to "re-open" file descriptors through
> /proc/self/fd has been a very useful tool for all sorts of usecases
> (container runtimes are one common example). However, the current
> interface for doing this has resulted in some pretty subtle security
> holes. Userspace can re-open a file descriptor with more permissions
> than the original, which can result in cases such as /proc/$pid/exe
> being re-opened O_RDWR at a later date even though (by definition)
> /proc/$pid/exe cannot be opened for writing. When combined with O_PATH
> the results can get even more confusing.
[...]
> Instead we have to restrict it in such a way that it doesn't break
> (good) users but does block potential attackers. The solution applied in
> this patch is to restrict *re-opening* (not resolution through)
> magic-links by requiring that mode of the link be obeyed. Normal
> symlinks have modes of a+rwx but magic-links have other modes. These
> magic-link modes were historically ignored during path resolution, but
> they've now been re-purposed for more useful ends.

Thanks for dealing with this issue!

[...]
> diff --git a/fs/namei.c b/fs/namei.c
> index 209c51a5226c..54d57dad0f91 100644
> --- a/fs/namei.c
> +++ b/fs/namei.c
> @@ -872,7 +872,7 @@ void nd_jump_link(struct path *path)
>
>         nd->path = *path;
>         nd->inode = nd->path.dentry->d_inode;
> -       nd->flags |= LOOKUP_JUMPED;
> +       nd->flags |= LOOKUP_JUMPED | LOOKUP_MAGICLINK_JUMPED;
>  }
[...]
> +static int trailing_magiclink(struct nameidata *nd, int acc_mode,
> +                             fmode_t *opath_mask)
> +{
> +       struct inode *inode = nd->link_inode;
> +       fmode_t upgrade_mask = 0;
> +
> +       /* Was the trailing_symlink() a magic-link? */
> +       if (!(nd->flags & LOOKUP_MAGICLINK_JUMPED))
> +               return 0;
> +
> +       /*
> +        * Figure out the upgrade-mask of the link_inode. Since these aren't
> +        * strictly POSIX semantics we don't do an acl_permission_check() here,
> +        * so we only care that at least one bit is set for each upgrade-mode.
> +        */
> +       if (inode->i_mode & S_IRUGO)
> +               upgrade_mask |= FMODE_PATH_READ;
> +       if (inode->i_mode & S_IWUGO)
> +               upgrade_mask |= FMODE_PATH_WRITE;
> +       /* Restrict the O_PATH upgrade-mask of the caller. */
> +       if (opath_mask)
> +               *opath_mask &= upgrade_mask;
> +       return may_open_magiclink(upgrade_mask, acc_mode);
>  }

This looks racy because entries in the file descriptor table can be
switched out as long as task->files->file_lock isn't held. Unless I'm
missing something, something like the following (untested) would
bypass this restriction:

int readonly_fd = ...; /* some read-only fd we want to reopen as writable */
int writable_fd = open("/dev/null", O_RDWR);
int flippy_fd = dup(writable_fd);
char flippy_fd_path[100];
sprintf(flippy_fd_path, "/proc/%d/fd/%d", getpid(), flippy_fd);
if (fork() == 0) {
  while (1) {
    int reopened_fd = open(flippy_fd_path, O_RDWR);
    if (reopened_fd == -1) continue;
    char reopened_fd_path[100];
    sprintf(reopened_fd_path, "/proc/self/fd/%d", reopened_fd);
    char reopened_fd_target[1000];
    int target_len = readlink(reopened_fd_path, reopened_fd_target,
sizeof(reopened_fd_target)-1);
    reopened_fd_target[target_len] = 0;
    if (strcmp(reopened_fd_target, "/dev/null"))
      printf("managed to reopen as writable\n");
    close(reopened_fd);
  }
} else {
  while (1) {
    dup2(readonly_fd, flippy_fd);
    dup2(writable_fd, flippy_fd);
  }
}

Perhaps you could change nd_jump_link() to "void nd_jump_link(struct
path *path, umode_t link_mode)", and let proc_pid_get_link() pass the
link_mode through from an out-argument of .proc_get_link()? Then
proc_fd_link() could grab the proper mode in a race-free manner. And
nd_jump_link() could stash the mode in the nameidata.

A sketch of how I imagine that:
===============================
diff --git a/fs/namei.c b/fs/namei.c
index 6b936038319b..14c6790203c7 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -506,6 +506,7 @@ struct nameidata {
        struct inode    *link_inode;
        unsigned        root_seq;
        int             dfd;
+       umode_t         last_link_mode;
 } __randomize_layout;

 static void set_nameidata(struct nameidata *p, int dfd, struct filename *name)
@@ -890,7 +891,7 @@ static int nd_jump_root(struct nameidata *nd)
  * Helper to directly jump to a known parsed path from ->get_link,
  * caller must have taken a reference to path beforehand.
  */
-void nd_jump_link(struct path *path)
+void nd_jump_link(struct path *path, umode_t link_mode)
 {
        struct nameidata *nd = current->nameidata;
        path_put(&nd->path);
@@ -898,6 +899,7 @@ void nd_jump_link(struct path *path)
        nd->path = *path;
        nd->inode = nd->path.dentry->d_inode;
        nd->flags |= LOOKUP_JUMPED | LOOKUP_MAGICLINK_JUMPED;
+       nd->last_link_mode = link_mode;
 }

 static inline void put_link(struct nameidata *nd)
@@ -3654,9 +3656,9 @@ static int trailing_magiclink(struct nameidata
*nd, int acc_mode,
         * strictly POSIX semantics we don't do an acl_permission_check() here,
         * so we only care that at least one bit is set for each upgrade-mode.
         */
-       if (inode->i_mode & S_IRUGO)
+       if (nd->last_link_mode & S_IRUGO)
                upgrade_mask |= FMODE_PATH_READ;
-       if (inode->i_mode & S_IWUGO)
+       if (nd->last_link_mode & S_IWUGO)
                upgrade_mask |= FMODE_PATH_WRITE;
        /* Restrict the O_PATH upgrade-mask of the caller. */
        if (opath_mask)
diff --git a/fs/proc/base.c b/fs/proc/base.c
index 297242174402..af0218447571 100644
--- a/fs/proc/base.c
+++ b/fs/proc/base.c
@@ -1614,6 +1614,7 @@ static const char *proc_pid_get_link(struct
dentry *dentry,
 {
        struct path path;
        int error = -EACCES;
+       umode_t link_mode;

        if (!dentry)
                return ERR_PTR(-ECHILD);
@@ -1622,11 +1623,11 @@ static const char *proc_pid_get_link(struct
dentry *dentry,
        if (!proc_fd_access_allowed(inode))
                goto out;

-       error = PROC_I(inode)->op.proc_get_link(dentry, &path);
+       error = PROC_I(inode)->op.proc_get_link(dentry, &path, &link_mode);
        if (error)
                goto out;

-       nd_jump_link(&path);
+       nd_jump_link(&path, link_mode);
        return NULL;
 out:
        return ERR_PTR(error);
diff --git a/fs/proc/fd.c b/fs/proc/fd.c
index 9b7d8becb002..9c1d247177b1 100644
--- a/fs/proc/fd.c
+++ b/fs/proc/fd.c
@@ -163,7 +163,8 @@ static const struct dentry_operations
tid_fd_dentry_operations = {
        .d_delete       = pid_delete_dentry,
 };

-static int proc_fd_link(struct dentry *dentry, struct path *path)
+static int proc_fd_link(struct dentry *dentry, struct path *path,
+                       umode_t *link_mode)
 {
        struct files_struct *files = NULL;
        struct task_struct *task;
@@ -184,6 +185,7 @@ static int proc_fd_link(struct dentry *dentry,
struct path *path)
                if (fd_file) {
                        *path = fd_file->f_path;
                        path_get(&fd_file->f_path);
+                       *link_mode = /* something based on fd_file->f_mode */;
                        ret = 0;
                }
                spin_unlock(&files->file_lock);
diff --git a/fs/proc/internal.h b/fs/proc/internal.h
index cd0c8d5ce9a1..a090fff984ed 100644
--- a/fs/proc/internal.h
+++ b/fs/proc/internal.h
@@ -74,7 +74,7 @@ extern struct kmem_cache *proc_dir_entry_cache;
 void pde_free(struct proc_dir_entry *pde);

 union proc_op {
-       int (*proc_get_link)(struct dentry *, struct path *);
+       int (*proc_get_link)(struct dentry *, struct path *, umode_t *);
        int (*proc_show)(struct seq_file *m,
                struct pid_namespace *ns, struct pid *pid,
                struct task_struct *task);
===============================

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
